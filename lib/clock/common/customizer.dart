import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_playground/clock/common/api/weather_api.dart';
import 'package:rxdart/rxdart.dart';

import 'bloc/clock_model_bloc.dart';
import 'model.dart';

typedef Widget ClockBuilder(ClockModel model);

class ClockCustomizer extends StatelessWidget {
  final ClockBuilder _clock;

  const ClockCustomizer(this._clock, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          ClockModelBloc(RepositoryProvider.of<WeatherApi>(context)),
      child: _ClockCustomizer(_clock),
    );
  }
}

class _ClockCustomizer extends StatefulWidget {
  final ClockBuilder _clock;

  _ClockCustomizer(this._clock, {Key? key}) : super(key: key);

  @override
  _ClockCustomizerState createState() => _ClockCustomizerState();
}

class _ClockCustomizerState extends State<_ClockCustomizer> {
  final PublishSubject<String> _locationSubject = PublishSubject<String>();

  @override
  void initState() {
    super.initState();
    final bloc = BlocProvider.of<ClockModelBloc>(context);
    _locationSubject.stream
        .debounceTime(Duration(milliseconds: 300))
        .listen((String location) {
      bloc.add(ClockModelEvent.setLocation(location));
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ClockModelBloc, ClockModelState>(
      builder: (context, state) => state.when(
          () => Container(
                color: Colors.white,
              ), loaded: (loaded) {
        final bloc = BlocProvider.of<ClockModelBloc>(context);
        final clock = Center(
          child: AspectRatio(
            aspectRatio: 5 / 3,
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  width: 2,
                  color: Theme.of(context).unselectedWidgetColor,
                ),
              ),
              child: widget._clock(loaded),
            ),
          ),
        );
        return MaterialApp(
          theme: ThemeData.light(),
          darkTheme: ThemeData.dark(),
          themeMode: loaded.themeMode,
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            resizeToAvoidBottomInset: false,
            endDrawer: _configDrawer(context, bloc, loaded),
            body: SafeArea(
              child: GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: () {
                  bloc.add(ClockModelEvent.setConfigButtonShown(
                      !loaded.configButtonShown));
                },
                child: Stack(
                  children: [
                    clock,
                    if (loaded.configButtonShown)
                      Positioned(
                        top: 0,
                        right: 0,
                        child: Opacity(
                          opacity: 0.7,
                          child: _configButton(bloc),
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ),
        );
      }),
    );
  }

  Widget _configButton(ClockModelBloc bloc) {
    return Builder(
      builder: (context) {
        return IconButton(
          icon: Icon(Icons.settings),
          tooltip: 'Configure clock',
          onPressed: () {
            Scaffold.of(context).openEndDrawer();
            bloc.add(ClockModelEvent.setConfigButtonShown(false));
          },
        );
      },
    );
  }

  Widget _enumMenu<T>(
      String label, T value, List<T> items, ValueChanged<T?> onChanged) {
    return InputDecorator(
      decoration: InputDecoration(
        labelText: label,
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<T>(
          value: value,
          isDense: true,
          onChanged: onChanged,
          items: items.map((T item) {
            return DropdownMenuItem<T>(
              value: item,
              child: Text(enumToString(item!)),
            );
          }).toList(),
        ),
      ),
    );
  }

  Widget _switch(String label, bool value, ValueChanged<bool> onChanged) {
    return Row(
      children: <Widget>[
        Expanded(child: Text(label)),
        Switch(
          value: value,
          onChanged: onChanged,
        )
      ],
    );
  }

  Widget _textField(
      String currentValue, String label, ValueChanged<String> onChanged) {
    return TextField(
      decoration: InputDecoration(
        hintText: currentValue,
        helperText: label,
      ),
      onChanged: onChanged,
    );
  }

  Widget _configDrawer(
      BuildContext context, ClockModelBloc bloc, ClockModel model) {
    return SafeArea(
        child: Drawer(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              _textField(model.location, 'Location', (String location) {
                _locationSubject.add(location);
              }),
              _textField(model.temperatureString, 'Temperature',
                  (String temperature) {
                bloc.add(
                    ClockModelEvent.setTemperature(double.parse(temperature)));
              }),
              _enumMenu('Theme', model.themeMode,
                  ThemeMode.values.toList()..remove(ThemeMode.system),
                  (ThemeMode? mode) {
                if (mode != null) {
                  bloc.add(ClockModelEvent.setThemeMode(mode));
                }
              }),
              _switch("24-hour format", model.is24HourFormat, (bool value) {
                bloc.add(ClockModelEvent.setIs24HourFormat(value));
              }),
              _enumMenu(
                  "Weather", model.weatherCondition, WeatherCondition.values,
                  (WeatherCondition? condition) {
                if (condition != null)
                  bloc.add(ClockModelEvent.setWeatherCondition(condition));
              }),
              _enumMenu('Units', model.unit, TemperatureUnit.values,
                  (TemperatureUnit? unit) {
                if (unit != null)
                  bloc.add(ClockModelEvent.setTemperatureUnit(unit));
              })
            ],
          ),
        ),
      ),
    ));
  }
}

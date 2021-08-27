import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_playground/clock/common/model.dart';
import 'package:intl/intl.dart';

enum _Element {
  background,
  text,
  shadow,
}

final _lightTheme = {
  _Element.background: const Color(0xFF81B3FE),
  _Element.text: Colors.white,
  _Element.shadow: Colors.black,
};

final _darkTheme = {
  _Element.background: Colors.black,
  _Element.text: Colors.white,
  _Element.shadow: const Color(0xFF174EA6),
};

class DigitalClock extends StatefulWidget {
  final ClockModel _model;

  const DigitalClock(this._model, {Key? key}) : super(key: key);

  @override
  _DigitalClockState createState() => _DigitalClockState();
}

class _DigitalClockState extends State<DigitalClock> {
  DateTime _dateTime = DateTime.now();
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _updateTime();
    _updateModel();
  }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).brightness == Brightness.light
        ? _lightTheme
        : _darkTheme;

    final hour =
        DateFormat(widget._model.is24HourFormat ? 'HH' : 'hh').format(_dateTime);
    final minute = DateFormat('mm').format(_dateTime);
    final fontSize = MediaQuery.of(context).size.width / 3.5;
    final offset = -fontSize / 7;
    final defaultStyle = TextStyle(
      color: colors[_Element.text]!,
      fontFamily: 'PressStart2P',
      fontSize: fontSize,
      shadows: [
        Shadow(
          blurRadius: 0,
          color: colors[_Element.shadow]!,
          offset: Offset(10, 0),
        ),
      ],
    );

    return Container(
      color: colors[_Element.background]!,
      child: Center(
        child: DefaultTextStyle(
          style: defaultStyle,
          child: Stack(
            children: <Widget>[
              Positioned(left: offset, top: 0, child: Text(hour)),
              Positioned(right: offset, bottom: offset, child: Text(minute)),
            ],
          ),
        ),
      ),
    );
  }

  void _updateModel() {
    setState(() {});
  }

  void _updateTime() {
    setState(() {
      _dateTime = DateTime.now();
      _timer = Timer(
        Duration(minutes: 1) -
            Duration(seconds: _dateTime.second) -
            Duration(milliseconds: _dateTime.microsecond),
        _updateTime,
      );
    });
  }
}

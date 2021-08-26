import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_playground/weather_ffi/ffi_bridge.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter with FFI',
      builder: BotToastInit(),
      navigatorObservers: [BotToastNavigatorObserver()],
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final FFIBridge ffiBridge = FFIBridge();

  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              "${widget.ffiBridge.getTemperatureRust()}",
              style: Theme.of(context).textTheme.headline4,
            ),
            ElevatedButton(
              onPressed: () {
                BotToast.showText(text: widget.ffiBridge.getForecast());
              },
              child: Text("click to forecast",
                  style: Theme.of(context).textTheme.button),
            ),
            SizedBox(height:16),
            ElevatedButton(
              onPressed: () {
                BotToast.showText(
                    text:
                        widget.ffiBridge.getThreeDayForecast(true).toString());
              },
              child: Text(" 3-day forecast (Fahrenheit)",
                  style: Theme.of(context).textTheme.button),
            )
          ],
        ),
      ),
    );
  }
}

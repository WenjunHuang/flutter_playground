import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';

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
        home: Scaffold(
          body: TextRenderHome(),
        ));
  }
}

class TextRenderHome extends StatefulWidget {
  const TextRenderHome({Key? key}) : super(key: key);

  @override
  _TextRenderHomeState createState() => _TextRenderHomeState();
}

class _TextRenderHomeState extends State<TextRenderHome> {
  late final TextEditingController controller;

  @override
  void initState() {
    super.initState();
    controller = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: const Text(
        "When 🐉☺️❤️👮🏿👨‍👩‍👧‍👦🚵 in the Course of human events it "+
            "becomes necessary for one people "+
            "Lettre à ma meilleure amie La célébration de Pâques "+
            "to dissolve the political bands which have connected them with another "+
            "吃葡萄不吐葡萄皮，落日"+
            "station to which the Laws of Nature and of Nature's God entitle them, "+
            "صباح الخير" +
            "おはようございます",
        style: TextStyle(fontSize: 16.0),
      ),
    );
  }
}

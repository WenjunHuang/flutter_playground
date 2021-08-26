
import 'package:flutter/material.dart';

enum _Element{
  background,
  text,
  shadow,
}

final _lightTheme = {
  _Element.background: const Color(0xFF81B3FE),
  _Element.text:Colors.white,
  _Element.shadow:Colors.black,
};

final _darkTheme = {
  _Element.background: Colors.black,
  _Element.text:Colors.white,
  _Element.shadow:const Color(0xFF174EA6),
};

class DigitalClock extends StatefulWidget {
  const DigitalClock({Key? key}) : super(key: key);

  @override
  _DigitalClockState createState() => _DigitalClockState();
}

class _DigitalClockState extends State<DigitalClock> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}


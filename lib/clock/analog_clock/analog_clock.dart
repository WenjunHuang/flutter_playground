import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import 'package:flutter_playground/clock/common/model.dart';
import 'package:intl/intl.dart';
import 'package:vector_math/vector_math_64.dart' show radians;

import 'container_hand.dart';
import 'draw_hand.dart';

final radiansPerTick = radians(360 / 60);
final radiansPerHour = radians(360 / 12);

class AnalogClock extends StatefulWidget {
  final ClockModel model;

  const AnalogClock(this.model, {Key? key}) : super(key: key);

  @override
  _AnalogClockState createState() => _AnalogClockState();
}

class _AnalogClockState extends State<AnalogClock> {
  var _now = DateTime.now();
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _updateTime();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    final customTheme = Theme.of(context).brightness == Brightness.light
        ? Theme.of(context).copyWith(
            // Hour hand.
            primaryColor: Color(0xFF4285F4),
            // Minute hand.
            highlightColor: Color(0xFF8AB4F8),
            // Second hand.
            accentColor: Color(0xFF669DF6),
            backgroundColor: Color(0xFFD2E3FC),
          )
        : Theme.of(context).copyWith(
            primaryColor: Color(0xFFD2E3FC),
            highlightColor: Color(0xFF4285F4),
            accentColor: Color(0xFF8AB4F8),
            backgroundColor: Color(0xFF3C4043),
          );
    final time = DateFormat.Hms().format(DateTime.now());
    final weatherInfo = DefaultTextStyle(
      style: TextStyle(color: customTheme.primaryColor),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(widget.model.temperatureString),
          Text('(${widget.model.low} - ${widget.model.highString})'),
          Text(widget.model.weatherCondition.weatherString),
          Text(widget.model.location),
        ],
      ),
    );

    return Semantics.fromProperties(
      properties: SemanticsProperties(
        label: 'Analog clock with time $time',
        value: time,
      ),
      child: Container(
        color: customTheme.backgroundColor,
        child: Stack(
          children: <Widget>[
            DrawHand(
              color: customTheme.accentColor,
              thickness: 4,
              size: 1,
              angleRadians: _now.second * radiansPerTick,
            ),
            DrawHand(
              color: customTheme.highlightColor,
              thickness: 16,
              size: 0.9,
              angleRadians: _now.minute * radiansPerTick,
            ),
            ContainerHand(
              color: Colors.transparent,
              size: 0.5,
              angleRadians: _now.hour * radiansPerHour +
                  (_now.minute / 60) * radiansPerHour,
              child: Transform.translate(
                offset: Offset(0.0, -60.0),
                child: Container(
                  width: 32,
                  height: 150,
                  decoration: BoxDecoration(
                    color: customTheme.primaryColor,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 0,
              bottom: 0,
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: weatherInfo,
              ),
            )
          ],
        ),
      ),
    );
  }



  void _updateTime() {
    setState(() {
      _now = DateTime.now();
      _timer = Timer(
        Duration(seconds: 1) - Duration(milliseconds: _now.microsecond),
        _updateTime,
      );
    });
  }
}

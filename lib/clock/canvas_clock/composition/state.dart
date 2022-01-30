import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:flutter_playground/clock/canvas_clock/style/background.dart';

import '../model.dart';
import '../style/palette.dart';
import 'composited.dart';

const spinUpDuration = Duration(milliseconds: 1735);

class Clock extends StatefulWidget {
  final ClockModel model;
  final Map<ClockColor, Color> palette;

  const Clock({
    Key? key,
    required this.model,
    required this.palette,
  }) : super(key: key);

  @override
  _ClockState createState() => _ClockState();
}

class _ClockState extends State<Clock> with TickerProviderStateMixin {
  late ClockModel model;
  late Timer updateTimer;

  late AnimationController spinUpController;

  @override
  void initState() {
    super.initState();

    model = widget.model;

    final time = DateTime.now();

    spinUpController = AnimationController(
      vsync: this,
      duration: spinUpDuration,
    )..forward();
  }

  Animation<double> get spinUpAnimation {
    return CurvedAnimation(
      parent: spinUpController,
      // When the clock face flips up to reveal itself,
      // I imagine it to be like a movie logo reveal:
      // a bit of THX, slowing easing in to finally
      // smash to stop.
      curve: Curves.easeIn,
    );
  }

  Animation<double> get backgroundWaveAnimation{
    return CurvedAnimation(
      parent: backgroundWaveController,
      curve: waveCurve,
      reverseCurve: waveCurve.flipped,
    );
  }

  @override
  Widget build(BuildContext context) {
    return CompositedClock(
      spinUpAnimation: spinUpAnimation,
      children: [
        Background(
            animation: backgroundWaveAnimation,
            analogTimeBounceAnimation: bounceAnimation,
            ballColor: Color.lerp(
              widget.palette[ClockColor.ballPrimary],
              widget.palette[ClockColor.ballSecondary],
              1 / 2,
            )!,
            groundColor: widget.palette[ClockColor.background]!,
            gooColor: widget.palette[ClockColor.goo]!,
            analogTimeComponentColor: analogTimeComponentColor,
            weatherComponentColor: weatherComponentColor,
            temperatureComponentColor: temperatureComponentColor)
      ],
    );
  }
}

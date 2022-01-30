import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../model.dart';
import '../style/palette.dart';
import 'state.dart';

class AnimatedClock extends ImplicitlyAnimatedWidget {
  final ClockModel model;
  final Map<ClockColor, Color> palette;

  const AnimatedClock({
    Key? key,
    Curve curve = Curves.linear,
    Duration duration = kThemeAnimationDuration,
    required this.model,
    required this.palette,
  }) : super(key: key, curve: curve, duration: duration);

  @override
  _AnimatedClockState createState() => _AnimatedClockState();
}

class ColorPaletteTween extends Tween<Map<ClockColor, Color>> {
  ColorPaletteTween({
    required Map<ClockColor, Color> begin,
  }) : super(begin: begin,);

  @override
  Map<ClockColor, Color> lerp(double t) {
    return <ClockColor, Color>{
      for (final entry in end!.entries) entry.key: Color.lerp(begin![entry.key], end![entry.key], t)!,
    };
  }
}

class _AnimatedClockState extends AnimatedWidgetBaseState<AnimatedClock> {
  ColorPaletteTween? _paletteTween;

  @override
  void forEachTween(visitor) {
    _paletteTween = visitor(_paletteTween,
        widget.palette,
            (value) => ColorPaletteTween(begin: value as Map<ClockColor, Color>),
    ) as ColorPaletteTween;

  }

  @override
  Widget build(BuildContext context) {
    return Clock(
      model: widget.model,
      palette: _paletteTween!.evaluate(animation),
    );
  }
}

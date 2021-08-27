import 'package:flutter/material.dart';
import 'package:flutter_playground/clock/analog_clock/hand.dart';

class ContainerHand extends Hand {
  final Widget? child;

  ContainerHand({
    required Color color,
    required double size,
    required double angleRadians,
    this.child,
  }) : super(color: color, size: size, angleRadians: angleRadians);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: SizedBox.expand(
      child: Transform.rotate(
        angle: angleRadians,
        alignment: Alignment.center,
        child: Transform.scale(
          scale: size,
          alignment: Alignment.center,
          child: Container(
            color: color,
            child: Center(child: child),
          ),
        ),
      ),
    ));
  }
}

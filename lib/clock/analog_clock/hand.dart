import 'package:flutter/material.dart';

abstract class Hand extends StatelessWidget {
  final Color color;
  final double size;
  final double angleRadians;

  const Hand({
    Key? key,
    required this.color,
    required this.size,
    required this.angleRadians,
  }) : super(key: key);
}

import 'package:flutter/material.dart';
import 'package:flutter_playground/render_box/render_proxy_box_my_opacity/my_opacity.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Center(
          child: Opacity(
            opacity: 0.1,
            child: Text("Hello My Opacity"),
          ),
        ),
      ),
    ),
  );
}

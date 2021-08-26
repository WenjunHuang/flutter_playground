import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

enum LayoutPosition {
  Left,
  Right,
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CustomMultiChildLayout',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Container(
          color: Colors.pink,
          child: CustomMultiChildLayout(
            delegate: LayoutDelegate(position: Offset.zero),
            children: [
              LayoutId(
                id: 1,
                child: Text("Widget One"),
              ),
              LayoutId(
                id: 2,
                child: Text("Widget two"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LayoutDelegate extends MultiChildLayoutDelegate {
  final Offset position;

  LayoutDelegate({required this.position});

  @override
  void performLayout(Size size) {
    Size leadingSize = Size.zero;
    if (hasChild(1)) {
      leadingSize = layoutChild(
        1,
        BoxConstraints.loose(size),
      );
    }

    if (hasChild(2)) {
      final secondSize = layoutChild(
        2,
        BoxConstraints(
          maxWidth: size.width,
          maxHeight: size.height,
        ),
      );

      positionChild(
        2,
        Offset(
          leadingSize.width,
          size.height / 2 - secondSize.height / 2,
        ),
      );
    }
  }

  @override
  bool shouldRelayout(covariant LayoutDelegate oldDelegate) {
    return oldDelegate.position != position;
  }
}

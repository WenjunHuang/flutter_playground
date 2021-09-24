import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'dart:math' as math;

class MyCenter extends SingleChildRenderObjectWidget {
  const MyCenter({Key? key, Widget? child}) : super(key: key, child: child);

  @override
  RenderObject createRenderObject(BuildContext context) {
    // TODO: implement createRenderObject
    throw UnimplementedError();
  }
}

class RenderCenterBox extends RenderShiftedBox {
  RenderCenterBox({RenderBox? child}) : super(child);

  @override
  Size computeDryLayout(BoxConstraints constraints) {
    if (child != null) {
      final childSize = child!.getDryLayout(constraints.loosen());
      return constraints.constrain(Size(childSize.width, childSize.height));
    }
    return constraints.constrain(Size(0.0, 0.0));
  }

  @override
  void performLayout() {
    final constraints = this.constraints;
    if (child != null) {
      child!.layout(constraints.loosen(), parentUsesSize: true);
      size = constraints.constrain(Size(child!.size.width, child!.size.height));
      alignChild();
    } else {
      size = constraints.constrain(Size.zero);
    }
  }

  @override
  void debugPaintSize(PaintingContext context, Offset offset) {
    super.debugPaintSize(context, offset);
    assert(() {
      final Paint paint;
      if (child != null && !child!.size.isEmpty) {
        paint = Paint()
          ..style = PaintingStyle.stroke
          ..strokeWidth = 1.0
          ..color = const Color(0xFFFFFF00);
        final path = Path();
        final childParentData = child!.parentData! as BoxParentData;
        if (childParentData.offset.dy > 0.0) {
          // vertical alignment arrows
          final headSize = math.min(childParentData.offset.dy * 0.2, 10.0);
          path
            ..moveTo(offset.dx + size.width / 2.0, offset.dy)
            ..relativeLineTo(0.0, childParentData.offset.dy - headSize)
            ..relativeLineTo(headSize, 0.0)
            ..relativeLineTo(-headSize, headSize)
            ..relativeLineTo(-headSize, -headSize)
            ..relativeLineTo(headSize, 0.0)
            ..moveTo(offset.dx + size.width / 2.0, offset.dy + size.height)
            ..relativeLineTo(0.0, -childParentData.offset.dy + headSize)
            ..relativeLineTo(headSize, 0.0)
            ..relativeLineTo(-headSize, -headSize)
            ..relativeLineTo(-headSize, headSize)
            ..relativeLineTo(headSize, 0.0);
          context.canvas.drawPath(path, paint);
        }
      }
      return true;
    }());
  }

  void alignChild() {
    assert(child != null);
    assert(!child!.debugNeedsLayout);
    assert(child!.hasSize);
    final childParentData = child!.parentData! as BoxParentData;
    childParentData.offset =
        Alignment.center.alongOffset(size - child!.size as Offset);
  }
}

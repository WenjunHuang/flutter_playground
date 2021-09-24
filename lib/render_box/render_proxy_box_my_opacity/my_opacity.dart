import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';

class MyOpacity extends SingleChildRenderObjectWidget {
  final double opacity;
  final bool alwaysIncludeSemantics;

  const MyOpacity({
    Key? key,
    required this.opacity,
    this.alwaysIncludeSemantics = false,
    Widget? child,
  }) : super(key: key, child: child);

  @override
  RenderObject createRenderObject(BuildContext context) {
    return MyRenderOpacity(
      opacity: opacity,
      alwaysIncludesSemantics: alwaysIncludeSemantics,
    );
  }

  @override
  void updateRenderObject(BuildContext context, MyRenderOpacity renderObject) {
    renderObject
      ..opacity = opacity
      ..alwaysIncludeSemantics = alwaysIncludeSemantics;
  }
}

class MyRenderOpacity extends RenderProxyBox {
  MyRenderOpacity({
    double opacity = 1.0,
    bool alwaysIncludesSemantics = false,
    RenderBox? child,
  })  : _opacity = opacity,
        _alpha = Color.getAlphaFromOpacity(opacity),
        _alwaysIncludeSemantics = alwaysIncludesSemantics,
        super(child);

  @override
  bool get alwaysNeedsCompositing =>
      child != null && (_alpha != 0 && _alpha != 255);

  int _alpha;

  double _opacity;

  double get opacity => _opacity;

  set opacity(double value) {
    assert(value >= 0 && value <= 1.0);
    if (_opacity == value) return;
    final didNeedCompositing = alwaysNeedsCompositing;
    final wasVisible = _alpha != 0;
    _opacity = value;
    _alpha = Color.getAlphaFromOpacity(_opacity);
    if (didNeedCompositing != alwaysNeedsCompositing)
      markNeedsCompositingBitsUpdate();
    markNeedsPaint();
    if (wasVisible != (_alpha != 0) && !alwaysIncludeSemantics)
      markNeedsSemanticsUpdate();
  }

  bool get alwaysIncludeSemantics => _alwaysIncludeSemantics;
  bool _alwaysIncludeSemantics;

  set alwaysIncludeSemantics(bool value) {
    if (value == _alwaysIncludeSemantics) return;
    _alwaysIncludeSemantics = value;
    markNeedsSemanticsUpdate();
  }

  @override
  void paint(PaintingContext context, Offset offset) {
    if (child != null) {
      if (_alpha == 0) {
        // No need to keep the layer. We'll create a new one if necessary.
        layer = null;
        return;
      }
      if (_alpha == 255) {
        // No need to keep the layer. We'll create a new one if necessary.
        layer = null;
        context.paintChild(child!, offset);
        return;
      }

      assert(needsCompositing);
      layer = context.pushOpacity(offset, _alpha, super.paint,
          oldLayer: layer as OpacityLayer?);
    }
  }
}

import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

import '../composition/composited.dart';
import '../rendering/composition.dart';

const waveDuration = Duration(minutes: 1);
const waveCurve = Curves.easeInOut;

double waveProgress(DateTime time) => 1 / waveDuration.inSeconds * time.second;

class Background extends LeafRenderObjectWidget {
  final Animation<double> animation, analogTimeBounceAnimation;

  final Color ballColor, groundColor, gooColor, analogTimeComponentColor, weatherComponentColor, temperatureComponentColor;

  const Background({
    Key? key,
    required this.animation,
    required this.analogTimeBounceAnimation,
    required this.ballColor,
    required this.groundColor,
    required this.gooColor,
    required this.analogTimeComponentColor,
    required this.weatherComponentColor,
    required this.temperatureComponentColor,
  }) : super(key: key);

  @override
  RenderBackground createRenderObject(BuildContext context) {
    // TODO: implement createRenderObject
    throw UnimplementedError();
  }
}

class BackgroundParentData extends ClockChildrenParentData {
  Map<ClockComponent, Rect> _rects = {};
  Offset analogTimeBounce = Offset.zero;

  BackgroundParentData() : super(ClockComponent.background);

  void addRect(ClockComponent component, Offset offset, Size size) {
    _rects[component] = offset & size;
  }

  Rect rectOf(ClockComponent component) {
    final rect = _rects[component];
    assert(rect != null, 'No $Rect was provided for $component. If the rect of this child should be accessible from $childType, this needs to be changed in $RenderCompositedClock.');
    return rect!;
  }

  /// Needs to be called before calling [addRect] or [rectOf].
  void clearRects() {
    _rects = {};
  }
}

class RenderBackground extends RenderCompositionChild<ClockComponent, BackgroundParentData> {
  final Animation<double> animation, analogTimeBounceAnimation;
  Color _ballColor, _groundColor, _gooColor, _analogTimeComponentColor, _weatherComponentColor, _temperatureComponentColor;

  RenderBackground({
    required this.animation,
    required this.analogTimeBounceAnimation,
    required Color ballColor,
    required Color groundColor,
    required Color gooColor,
    required Color analogTimeComponentColor,
    required Color weatherComponentColor,
    required Color temperatureComponentColor,
  })  : _ballColor = ballColor,
        _groundColor = groundColor,
        _gooColor = gooColor,
        _analogTimeComponentColor = analogTimeComponentColor,
        _weatherComponentColor = weatherComponentColor,
        _temperatureComponentColor = temperatureComponentColor,
        super(ClockComponent.background);

  set ballColor(Color value) {
    if (_ballColor == value) return;
    _ballColor = value;
    markNeedsPaint();
  }

  set groundColor(Color value) {
    if (_groundColor == value) return;

    _groundColor = value;
    markNeedsPaint();
  }

  set gooColor(Color value) {
    if (_gooColor == value) {
      return;
    }
    _gooColor = value;
    markNeedsPaint();
  }

  set analogTimeComponentColor(Color value) {
    if (_analogTimeComponentColor == value) return;
    _analogTimeComponentColor = value;
    markNeedsPaint();
  }

  set weatherComponentColor(Color value) {
    if (_weatherComponentColor == value) return;

    _weatherComponentColor = value;
    markNeedsPaint();
  }

  set temperatureComponentColor(Color value) {
    if (_temperatureComponentColor == value) return;
    _temperatureComponentColor = value;
    markNeedsPaint();
  }

  @override
  bool get isRepaintBoundary => true;

  @override
  Size computeDryLayout(BoxConstraints constraints)=>constraints.biggest;

  @override
  void attach(PipelineOwner owner) {
    super.attach(owner);

    compositionData.hasSemanticsInformation = false;

    animation.addListener(markNeedsPaint);
    analogTimeBounceAnimation.addListener(markNeedsPaint);
  }

  @override
  void detach() {
    animation.removeListener(markNeedsPaint);
    analogTimeBounceAnimation.removeListener(markNeedsPaint);

    super.detach();
  }

  @override
  bool get sizedByParent => true;

  @override
  void paint(PaintingContext context, Offset offset) {
    final gooArea = Rect.fromLTWH(
      -double.maxFinite,
      size.height / 2 + (animation.value - 1 / 2) * size.height / 5,
      double.infinity,
      double.maxFinite,
    );
    final components = [
      compositionData.rectOf(ClockComponent.weather),
      compositionData.rectOf(ClockComponent.temperature),
      compositionData.rectOf(ClockComponent.analogTime).shift(compositionData.analogTimeBounce * analogTimeBounceAnimation.value),
    ];
    final componentColors = [
      _weatherComponentColor,
      _temperatureComponentColor,
      _analogTimeComponentColor,
    ];
    final componentsInGoo = components.where((rect) => rect.overlaps(gooArea)).map((rect) => gooArea.intersect(rect)).toList();
    final canvas = context.canvas;

    canvas.save();
  }
}

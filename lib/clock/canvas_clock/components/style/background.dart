import 'package:flutter/widgets.dart';
import 'package:flutter_playground/clock/canvas_clock/composition/composited.dart';
import 'package:flutter_playground/clock/canvas_clock/rendering/composition.dart';

const waveDuration = Duration(minutes: 1),
    waveCurve = Curves.easeInOut;

double waveProgress(DateTime time) => 1 / waveDuration.inSeconds * time.second;

class Background extends LeafRenderObjectWidget {
  final Animation<double> animation, analogTimeBounceAnimation;

  final Color ballColor,
      groundColor,
      gooColor,
      analogTimeComponentColor,
      weatherComponentColor,
      temperatureComponentColor;

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
  RenderObject createRenderObject(BuildContext context) {
    return RenderBackground()
  }
}

class RenderBackground
    extends RenderCompositionChild<ClockComponent, BackgroundParentData> {
  final Animation<double> animation, analogTimeBounceAnimation;
  late Color _ballColor, _groundColor, _gooColor, _analogTimeComponentColor,
      _weatherComponentColor, _temperatureComponentColor;

  RenderBackground({
    required this.animation,
    required this.analogTimeBounceAnimation,
    required Color ballColor,
    required Color groundColor,
    required Color gooColor,
    required Color analogTimeComponentColor,
    required Color weatherComponentColor,
    required Color temperatureComponentColor,
  }) : _ballColor = ballColor,
       _groundColor = groundColor,
       _gooColor = gooColor,
       _analogTimeComponentColor = analogTimeComponentColor,
       _weatherComponentColor = weatherComponentColor,
       _temperatureComponentColor = temperatureComponentColor,
       super(ClockComponent.background);

  @override
  Size computeDryLayout(BoxConstraints constraints) {
    // TODO: implement computeDryLayout
    return super.computeDryLayout(constraints);
  }


}

class BackgroundParentData extends ClockChildrenParentData {
  late Map<ClockComponent, Rect> _rects;
  late Offset analogTimeBounce;

  void addRect(ClockComponent component, Offset offset, Size size) {
    _rects[component] = offset & size;
  }

  Rect rectOf(ClockComponent component) {
    final rect = _rects[component];
    assert(rect != null,
    'No $Rect was provided for $component. If the rect of this child should be accessible from $childType, this needs to be changed in $RenderCompositedClock.');
    return rect!;
  }

  /// Needs to be called before calling [addRect] or [rectOf].
  void clearRects() {
    _rects = {};
  }

}


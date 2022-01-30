import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_playground/clock/canvas_clock/style/background.dart';

import '../rendering/composition.dart';

class CompositedClock extends MultiChildRenderObjectWidget {
  final Animation<double> spinUpAnimation;

  CompositedClock({
    Key? key,
    required this.spinUpAnimation,
    required List<Widget> children,
  }) : super(key: key, children: children);

  @override
  RenderObject createRenderObject(BuildContext context) {
    return RenderCompositedClock(
      spinUpAnimation: spinUpAnimation,
    );
  }
}

enum ClockComponent {
  analogTime,
  background,
  ball,
  date,
  digitalTime,
  location,

  /// Slide where the [ball] rolls down.
  slide,
  temperature,
  weather,
}

/// The order in which the children are passed to the widget does not matter
/// and is alphabetical, i.e. the following is the paint order.
const List<ClockComponent> paintOrder = [
  ClockComponent.background,
  ClockComponent.location,
  ClockComponent.date,
  ClockComponent.temperature,
  ClockComponent.weather,
  ClockComponent.analogTime,
  ClockComponent.digitalTime,
  ClockComponent.ball,
  ClockComponent.slide,
];

class ClockChildrenParentData extends CompositionChildrenParentData<ClockComponent> {
  bool hasSemanticsInformation;

  ClockChildrenParentData(ClockComponent childType, {this.hasSemanticsInformation = false}) : super(childType, false);
}

class RenderCompositedClock extends RenderComposition<ClockComponent, ClockChildrenParentData, CompositedClock> {
  final Animation<double> spinUpAnimation;

  RenderCompositedClock({required this.spinUpAnimation}) : super([ClockComponent.background]);

  /// Declares that [RenderCompositedClock] is not a repaint
  /// boundary.
  ///
  /// Every child that is animated and marks itself
  /// as needing to repaint is a repaint boundary
  /// and will therefore not repaint this composition.
  /// Every other [markNeedsPaint] in children happens
  /// in the same context as a repaint in this render object.
  @override
  bool get isRepaintBoundary => false;

  @override
  void attach(PipelineOwner owner) {
    super.attach(owner);

    spinUpAnimation.addListener(markNeedsLayout);
  }

  @override
  void detach() {
    spinUpAnimation.removeListener(markNeedsLayout);
    super.detach();
  }

  @override
  void setupParentData(covariant RenderObject child) {
    if (child.parentData is! ClockChildrenParentData) {
      if (child is RenderBackground) {
        child.parentData = BackgroundParentData();
      }
      (child.parentData as ClockChildrenParentData).valid = false;
    }
  }

  @override
  void performLayout() {
    super.performLayout();

    size = constraints.biggest;

    // Background
    final background = layoutChildren[ClockComponent.background]!;
    final backgroundData = layoutParentData[ClockComponent.background] as BackgroundParentData;
    backgroundData.clearRects();
    background.layout(BoxConstraints.tight(size));
  }
}

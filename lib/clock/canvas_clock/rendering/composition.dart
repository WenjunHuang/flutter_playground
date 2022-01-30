import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class CompositionChildrenParentData<C> extends ContainerBoxParentData<RenderBox> {
  C childType;
  bool valid;

  CompositionChildrenParentData(this.childType, this.valid);
}

/// [RenderObject] for [MultiChildRenderObjectWidget]s that are supposed to layout a specific set of children and all of these only exactly once.
///
/// [C] is intended to be an enum.
abstract class RenderComposition<C extends Object, D extends CompositionChildrenParentData<C>, P extends MultiChildRenderObjectWidget> extends RenderBox
    with ContainerRenderObjectMixin<RenderBox, D>, RenderBoxContainerDefaultsMixin<RenderBox, D> {
  final List<C> children;

  RenderComposition(this.children);

  @override
  bool hitTestChildren(BoxHitTestResult result, {required Offset position}) {
    return defaultHitTestChildren(result, position: position);
  }

  late Map<C, RenderBox> layoutChildren;
  late Map<C, D> layoutParentData;

  @override
  @mustCallSuper
  void performLayout() {
    layoutChildren = {};
    layoutParentData = {};

    var child = firstChild;
    while (child != null) {
      final childParentData = child.parentData as D;
      final type = childParentData.childType;

      assert(
          childParentData.valid,
          'A child ($child) was passed to $P which does not set up its $RenderObject.parentData '
          'as $D correctly (setting $D.valid to `true`).');

      assert(
          !layoutChildren.containsKey(type),
          'The children passed to $P contain the child type ${describeEnum(type)} more than once. '
          'Every child type can only be passed exactly once.');

      layoutChildren[type] = child;
      layoutParentData[type] = childParentData;

      child = childParentData.nextSibling;
    }

    final missingComponents = children.where((child) => !layoutChildren.containsKey(child));

    assert(
        missingComponents.isEmpty,
        'The children passed to $P do not cover every child type of $children. '
        'You need to pass every child type exactly once and '
        'specify the child type correctly using $CompositionChildrenParentData.\n'
        'Missing children are $missingComponents.');

    child = null;
  }

  late Function(C child) paintChild;

  @override
  @mustCallSuper
  void paint(PaintingContext context, Offset offset) {
    final children = <C, RenderBox>{};
    final parentData = <C, D>{};

    var child = firstChild;
    while (child != null) {
      final childParentData = child.parentData as D;
      final component = childParentData.childType;

      children[component] = child;
      parentData[component] = childParentData;

      child = childParentData.nextSibling;
    }

    paintChild = (C child) => context.paintChild(children[child]!, parentData[child]!.offset + offset);
  }

  static const bool debugPaintMessageEnabled = false;

  @override
  @mustCallSuper
  void debugPaint(PaintingContext context, Offset offset) {
    assert(() {
      if (debugPaintMessageEnabled && debugPaintSizeEnabled) {
        final painter = TextPainter(
          text: const TextSpan(
            text: 'Please send me a sign :/ This is leading me nowhere and I do not mean this challenge - creativecreatorormaybenot.',
            style: TextStyle(
              fontSize: 42,
              color: Color(0xffff3456),
              backgroundColor: Color(0xffffffff),
            ),
          ),
        );
        painter.layout(maxWidth: size.width);
        painter.paint(context.canvas, Offset(0, size.height / 2));
      }
      return true;
    }());
  }
}

/// Takes care of validating [RenderObject]s passed to [RenderComposition] and assigning an enum value of type [C].
/// It also provides easy access to the [CompositionChildrenParentData] of this [RenderObject] via [compositionData].
abstract class RenderCompositionChild<C, D extends CompositionChildrenParentData<C>> extends RenderBox {
  final C childType;

  RenderCompositionChild(this.childType);

  D get compositionData => parentData as D;

  @override
  @mustCallSuper
  void attach(PipelineOwner owner) {
    super.attach(owner);

    compositionData
      ..valid = true
      ..childType = childType;
  }
}

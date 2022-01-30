import 'package:flutter/widgets.dart';

import '../model.dart';
import 'manual.dart';

typedef ClockModelBuilder = Widget Function(BuildContext context, ClockModel model);

enum CustomizationFlow {
  manual,
  automatic,
}

class Customizer extends StatelessWidget {
  final ClockModelBuilder builder;
  final CustomizationFlow mode;
  final bool debugSemantics;

  const Customizer({
    Key? key,
    required this.mode,
    required this.builder,
    this.debugSemantics = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (mode == CustomizationFlow.manual) {
      return ManualCustomizer(builder: builder);
    } else
      return Container();
  }
}

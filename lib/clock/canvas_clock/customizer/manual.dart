import 'package:flutter/widgets.dart';

import '../customizer.dart';
import 'customizer.dart';

class ManualCustomizer extends StatelessWidget {
  final ClockModelBuilder builder;

  const ManualCustomizer({
    Key? key,
    required this.builder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClockCustomizer(
            (model) =>
            Builder(
              builder: (context) => builder(context, model),
            )
    );
  }
}

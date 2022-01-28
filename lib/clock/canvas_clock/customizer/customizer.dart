
import 'package:flutter/widgets.dart';

typedef ClockModelBuilder = Widget Function(BuildContext context,ClockModel model);
class Customizer extends StatelessWidget {
  final ClockModelBuilder builder;
  const Customizer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

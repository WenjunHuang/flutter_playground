import 'package:flutter/material.dart';
import 'package:flutter_playground/clock/canvas_clock/style/palette.dart';

import 'composition/animated.dart';
import 'customizer/customizer.dart';

const customizationFlowMode = CustomizationFlow.manual;
const debugSemantics = false;
const ballEvery = 60;

const PaletteMode paletteMode = PaletteMode.adaptive;

void main() {
  runApp(
    Customizer(
      mode: customizationFlowMode,
      builder: (context, model) =>Palette(
        builder: (context,palette) {
          return AnimatedClock(
            model:model,
            palette:palette,
          );
        }
      ),
    ),
  );
}

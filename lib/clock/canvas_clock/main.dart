
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_playground/clock/common/api/api.dart';

import 'components/style/palette.dart';

const debugSemantics = false;
const ballEvery = 60;
const PaletteMode paletteMode = PaletteMode.adaptive;

void main() {
  runApp(
    RepositoryProvider<WeatherApi>(
      create: (context)=>WeatherApi(Dio()),
      child: ClockCustomizer((model)=>Palette()),
    )
  );
}
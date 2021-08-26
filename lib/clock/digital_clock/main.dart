import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_playground/clock/common/api/weather_api.dart';
import 'package:flutter_playground/clock/common/customizer.dart';

void main() {
  runApp(RepositoryProvider<WeatherApi>(
    create: (context) => WeatherApi(Dio()),
    child: ClockCustomizer((model) => Container()),
  ));
}

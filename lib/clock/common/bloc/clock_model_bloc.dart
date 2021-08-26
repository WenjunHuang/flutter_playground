import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_playground/clock/common/api/weather_api.dart';
import 'package:flutter_playground/clock/common/model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'clock_model_event.dart';

part 'clock_model_state.dart';

part 'clock_model_bloc.freezed.dart';

class ClockModelBloc extends Bloc<ClockModelEvent, ClockModelState> {
  WeatherApi _api;

  ClockModelBloc(this._api) : super(ClockModelState()) {
    add(ClockModelEvent.initialize());
  }

  @override
  Stream<ClockModelState> mapEventToState(
    ClockModelEvent event,
  ) async* {
    // final weather = await _api.getWeatherFor();
    final currentState = state;

    yield* event.when(
      initialize: () async* {
        yield ClockModelState.loaded(
          ClockModel(
            is24HourFormat: true,
            location: "Guangzhou",
            temperature: 28,
            high: 30,
            low: 26,
            weatherCondition: WeatherCondition.rainy(),
            unit: TemperatureUnit.celsius(),
            themeMode: ThemeMode.light,
            configButtonShown: true,
          ),
        );
      },
      setTemperatureUnit: (TemperatureUnit unit) async* {
        if (currentState is LoadedStateDetail)
          yield ClockModelState.loaded(currentState.model.copyWith(unit: unit));
      },
      setIs24HourFormat: (bool is24HourFormat) async* {
        if (currentState is LoadedStateDetail)
          yield ClockModelState.loaded(
              currentState.model.copyWith(is24HourFormat: is24HourFormat));
      },
      setThemeMode: (ThemeMode themeMode) async* {
        if (currentState is LoadedStateDetail)
          yield ClockModelState.loaded(
              currentState.model.copyWith(themeMode: themeMode));
      },
      setWeatherCondition: (WeatherCondition condition) async* {
        if (currentState is LoadedStateDetail)
          yield ClockModelState.loaded(
              currentState.model.copyWith(weatherCondition: condition));
      },
      setTemperature: (num temperature) async* {
        if (currentState is LoadedStateDetail)
          yield ClockModelState.loaded(
              currentState.model.copyWith(temperature: temperature));
      },
      setLocation: (String location) async* {
        if (currentState is LoadedStateDetail)
          yield ClockModelState.loaded(
              currentState.model.copyWith(location: location));
      },
      setConfigButtonShown: (bool shown) async* {
        if (currentState is LoadedStateDetail)
          yield ClockModelState.loaded(
              currentState.model.copyWith(configButtonShown: shown));
      },
    );
  }
}

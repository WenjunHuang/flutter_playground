import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'model.freezed.dart';

num _convertToCelsius(num degrees) {
  return (degrees - 32.0) * 5.0 / 9.0;
}

num _convertToFahrenheit(num degrees) {
  return 32.0 + degrees * 9.0 / 5.0;
}

@freezed
class ClockModel with _$ClockModel {
  ClockModel._();

  factory ClockModel({
    required bool is24HourFormat,
    required String location,
    required num temperature,
    required num high,
    required num low,
    required WeatherCondition weatherCondition,
    required TemperatureUnit unit,
    required ThemeMode themeMode,
    required bool configButtonShown,
  }) = _ClockModel;

  String get temperatureString =>
      '${temperature.toStringAsFixed(1)}${unit.unitString}';

  String get highString => '${high.toStringAsFixed(1)}${unit.unitString}';

  ClockModel convertToCelsius() {
    return unit.when(
        fahrenheit: () => this.copyWith(
              temperature: _convertToCelsius(this.temperature),
              high: _convertToCelsius(this.high),
              low: _convertToCelsius(this.low),
            ),
        celsius: () => this);
  }

  ClockModel convertToFahrenheit() {
    return unit.when(
        fahrenheit: () => this,
        celsius: () => this.copyWith(
              temperature: _convertToFahrenheit(this.temperature),
              high: _convertToFahrenheit(this.high),
              low: _convertToFahrenheit(this.low),
            ));
  }
}

@freezed
class WeatherCondition with _$WeatherCondition {
  const WeatherCondition._();

  factory WeatherCondition.cloudy() = Cloudy;

  factory WeatherCondition.foggy() = Foggy;

  factory WeatherCondition.rainy() = Rainy;

  factory WeatherCondition.snowy() = Snowy;

  factory WeatherCondition.sunny() = Sunny;

  factory WeatherCondition.thunderstorm() = Thunderstorm;

  factory WeatherCondition.windy() = Windy;

  static List<WeatherCondition> get values => [
        WeatherCondition.cloudy(),
        WeatherCondition.foggy(),
        WeatherCondition.rainy(),
        WeatherCondition.snowy(),
        WeatherCondition.sunny(),
        WeatherCondition.thunderstorm(),
        WeatherCondition.windy(),
      ];

  String get weatherString => this.when(
      cloudy: () => "cloudy",
      foggy: () => "foggy",
      rainy: () => "rainy",
      snowy: () => "snowy",
      sunny: () => "sunny",
      thunderstorm: () => "thunderstorm",
      windy: () => "windy");
}

@freezed
class TemperatureUnit with _$TemperatureUnit {
  const TemperatureUnit._();

  factory TemperatureUnit.fahrenheit() = Fahrenheit;

  factory TemperatureUnit.celsius() = Celsius;

  String get unitString =>
      this.when(fahrenheit: () => '°F', celsius: () => '°C');

  String get value => this.when(
      fahrenheit: () => "${(Fahrenheit).toString()}",
      celsius: () => "${(Celsius).toString()}");

  static List<TemperatureUnit> get values => [
        TemperatureUnit.fahrenheit(),
        TemperatureUnit.celsius(),
      ];
}

String enumToString<T>(T item) {
  return item.toString().split('.').last.split('(').first;
}

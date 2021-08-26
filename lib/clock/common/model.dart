import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'model.freezed.dart';

// class ClockModel extends ChangeNotifier {
//   bool _is24HourFormat = true;
//   bool get is24HourFormat => _is24HourFormat;
//   set is24HourFormat(bool is24HourFormat) {
//     if (_is24HourFormat != is24HourFormat) {
//       _is24HourFormat = is24HourFormat;
//       notifyListeners();
//     }
//   }
//
//   String get location => _location;
//   String _location = "Guangzhou, GD";
//   set location(String location) {
//     if (location != _location){
//       _location = location;
//       notifyListeners();
//     }
//   }
//
//   num get temperature => _convertFromCelsius(_temperature);
//   num _temperature = 22.0;
//   set temperature(num temperature){
//     temperature = _convertToCelsius(temperature);
//     if (_temperature != temperature) {
//       _temperature = temperature;
//       _low = _temperature - 3.0;
//       _height = _temperature + 4.0;
//       notifyListeners();
//     }
//   }
//
//   /// Daily hight temperature
//   num get high => _convertFromCelsius(_high);
//   num _high = 26.0;
//   set high(num high){
//     high = _convertToCelsius(high);
//     if (high!=_high){
//       _high = high;
//       notifyListeners();
//     }
//   }
//
//   num get low => _convertFromCelsius(_low);
//   num _low = 19.0;
//   set low(num low){
//     low = _convertToCelsius(low);
//     if (low != _low){
//       _low = low;
//       notifyListeners();
//     }
//   }
//
//   WeatherCondition get weatherCondition => _weatherCondition;
//   WeatherCondition _weatherCondition = WeatherCondition.sunny;
//   set weatherCondition(WeatherCondition weatherCondition) {
//     if (weatherCondition != _weatherCondition) {
//       _weatherCondition = weatherCondition;
//       notifyListeners();
//     }
//   }
//
//   num _convertFromCelsius(num degreesCelsius){
//     switch(unit){
//       case TemperatureUnit.fahrenheit:
//         return (degrees - 32.0) * 5.0 / 9.0;
//       case TemperatureUnit.celsius:
//       default:
//         return degrees;
//         break;
//     }
//   }
//
// }

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

// String get weatherString => this.when
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

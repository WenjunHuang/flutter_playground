import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_playground/clock/common/common.dart';

class ClockModel extends ChangeNotifier {
  bool get is24HourFormat => _is24HourFormat;
  bool _is24HourFormat = true;

  set is24HourFormat(bool is24HourFormat) {
    if (_is24HourFormat != is24HourFormat) {
      _is24HourFormat = is24HourFormat;
      notifyListeners();
    }
  }

  /// Current location String
  String _location = 'Mountain View, CA';

  String get location => _location;

  set location(String location) {
    if (location != _location) {
      _location = location;
      notifyListeners();
    }
  }

  num _temperature = 22.0;

  num get temperature => _convertFromCelsius(_temperature);

  set temperature(num temperature) {
    temperature = _convertToCelsius(temperature);
    if (_temperature != temperature) {
      _temperature = temperature;
      _low = _temperature - 3.0;
      _high = _temperature + 4.0;
      notifyListeners();
    }
  }

  /// Daily high temperature, for example '26'
  num _high=  26.0;
  num get high => _convertFromCelsius(_high);
  set high(num high) {
    high = _convertFromCelsius(high);
    if (high != _high){
      _high = high;
      notifyListeners();
    }
  }

  /// Daily low temperature, for example '19'.
  num _low = 19.0;
  num get low => _convertFromCelsius(_low);
  set low(num low){
    low = _convertFromCelsius(low);
    if (low != _low){
      _low = low;
      notifyListeners();
    }
  }

  num _convertFromCelsius(num degreesCelsius) => unit.when(fahrenheit: () => 32.0 + degreesCelsius * 9.0 / 5.0, celsius: () => degreesCelsius);

  num _convertToCelsius(num degrees) => unit.when(fahrenheit: () => (degrees - 32.0) * 5.0 / 9.0, celsius: () => degrees);

  TemperatureUnit _unit = TemperatureUnit.celsius();

  TemperatureUnit get unit => _unit;

  set unit(TemperatureUnit unit) {
    if (unit != _unit) {
      _unit = unit;
      notifyListeners();
    }
  }
}

/// Weather condition in English.
enum WeatherCondition {
  cloudy,
  foggy,
  rainy,
  snowy,
  sunny,
  thunderstorm,
  windy,
}

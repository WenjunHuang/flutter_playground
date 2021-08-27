import 'package:dio/dio.dart';
import 'package:flutter_playground/clock/common/api/weather_api.dart';
import 'package:flutter_playground/clock/common/model.dart';

void main() async {
  WeatherApi api = WeatherApi(Dio());
  final result = await api.getWeatherFor();
  print(result);
  // print(TemperatureUnit.fahrenheit().toString());
}

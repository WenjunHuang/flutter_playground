import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_api.freezed.dart';

part 'weather_api.g.dart';

class WeatherApi {
  Dio _dio;

  WeatherApi(this._dio);

  /// get current weather for a location
  Future<WeatherData> getWeatherFor({String? location = null}) async {
    final response =
        await _dio.get('https://wttr.in/${location ?? ""}?format=j1');
    return WeatherData.fromJson(response.data);
  }
}

@freezed
class WeatherData with _$WeatherData {
  const factory WeatherData(
      @JsonKey(name: "current_condition")
          List<CurrentCondition> currentConditions) = _WeatherData;

  factory WeatherData.fromJson(Map<String, dynamic> json) =>
      _$WeatherDataFromJson(json);
}

@freezed
class CurrentCondition with _$CurrentCondition {
  factory CurrentCondition(
      String weatherCode,
      @JsonKey(name: "temp_C") String celsius,
      @JsonKey(name: "temp_F") String fahrenheit) = _CurrentCondition;

  factory CurrentCondition.fromJson(Map<String, dynamic> json) =>
      _$CurrentConditionFromJson(json);
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_api.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WeatherData _$$_WeatherDataFromJson(Map<String, dynamic> json) =>
    _$_WeatherData(
      (json['current_condition'] as List<dynamic>)
          .map((e) => CurrentCondition.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_WeatherDataToJson(_$_WeatherData instance) =>
    <String, dynamic>{
      'current_condition': instance.currentConditions,
    };

_$_CurrentCondition _$$_CurrentConditionFromJson(Map<String, dynamic> json) =>
    _$_CurrentCondition(
      json['weatherCode'] as String,
      json['temp_C'] as String,
      json['temp_F'] as String,
    );

Map<String, dynamic> _$$_CurrentConditionToJson(_$_CurrentCondition instance) =>
    <String, dynamic>{
      'weatherCode': instance.weatherCode,
      'temp_C': instance.celsius,
      'temp_F': instance.fahrenheit,
    };

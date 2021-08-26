// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'weather_api.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WeatherData _$WeatherDataFromJson(Map<String, dynamic> json) {
  return _WeatherData.fromJson(json);
}

/// @nodoc
class _$WeatherDataTearOff {
  const _$WeatherDataTearOff();

  _WeatherData call(
      @JsonKey(name: "current_condition")
          List<CurrentCondition> currentConditions) {
    return _WeatherData(
      currentConditions,
    );
  }

  WeatherData fromJson(Map<String, Object> json) {
    return WeatherData.fromJson(json);
  }
}

/// @nodoc
const $WeatherData = _$WeatherDataTearOff();

/// @nodoc
mixin _$WeatherData {
  @JsonKey(name: "current_condition")
  List<CurrentCondition> get currentConditions =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherDataCopyWith<WeatherData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherDataCopyWith<$Res> {
  factory $WeatherDataCopyWith(
          WeatherData value, $Res Function(WeatherData) then) =
      _$WeatherDataCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "current_condition")
          List<CurrentCondition> currentConditions});
}

/// @nodoc
class _$WeatherDataCopyWithImpl<$Res> implements $WeatherDataCopyWith<$Res> {
  _$WeatherDataCopyWithImpl(this._value, this._then);

  final WeatherData _value;
  // ignore: unused_field
  final $Res Function(WeatherData) _then;

  @override
  $Res call({
    Object? currentConditions = freezed,
  }) {
    return _then(_value.copyWith(
      currentConditions: currentConditions == freezed
          ? _value.currentConditions
          : currentConditions // ignore: cast_nullable_to_non_nullable
              as List<CurrentCondition>,
    ));
  }
}

/// @nodoc
abstract class _$WeatherDataCopyWith<$Res>
    implements $WeatherDataCopyWith<$Res> {
  factory _$WeatherDataCopyWith(
          _WeatherData value, $Res Function(_WeatherData) then) =
      __$WeatherDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "current_condition")
          List<CurrentCondition> currentConditions});
}

/// @nodoc
class __$WeatherDataCopyWithImpl<$Res> extends _$WeatherDataCopyWithImpl<$Res>
    implements _$WeatherDataCopyWith<$Res> {
  __$WeatherDataCopyWithImpl(
      _WeatherData _value, $Res Function(_WeatherData) _then)
      : super(_value, (v) => _then(v as _WeatherData));

  @override
  _WeatherData get _value => super._value as _WeatherData;

  @override
  $Res call({
    Object? currentConditions = freezed,
  }) {
    return _then(_WeatherData(
      currentConditions == freezed
          ? _value.currentConditions
          : currentConditions // ignore: cast_nullable_to_non_nullable
              as List<CurrentCondition>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WeatherData implements _WeatherData {
  const _$_WeatherData(
      @JsonKey(name: "current_condition") this.currentConditions);

  factory _$_WeatherData.fromJson(Map<String, dynamic> json) =>
      _$$_WeatherDataFromJson(json);

  @override
  @JsonKey(name: "current_condition")
  final List<CurrentCondition> currentConditions;

  @override
  String toString() {
    return 'WeatherData(currentConditions: $currentConditions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WeatherData &&
            (identical(other.currentConditions, currentConditions) ||
                const DeepCollectionEquality()
                    .equals(other.currentConditions, currentConditions)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(currentConditions);

  @JsonKey(ignore: true)
  @override
  _$WeatherDataCopyWith<_WeatherData> get copyWith =>
      __$WeatherDataCopyWithImpl<_WeatherData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeatherDataToJson(this);
  }
}

abstract class _WeatherData implements WeatherData {
  const factory _WeatherData(
      @JsonKey(name: "current_condition")
          List<CurrentCondition> currentConditions) = _$_WeatherData;

  factory _WeatherData.fromJson(Map<String, dynamic> json) =
      _$_WeatherData.fromJson;

  @override
  @JsonKey(name: "current_condition")
  List<CurrentCondition> get currentConditions =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$WeatherDataCopyWith<_WeatherData> get copyWith =>
      throw _privateConstructorUsedError;
}

CurrentCondition _$CurrentConditionFromJson(Map<String, dynamic> json) {
  return _CurrentCondition.fromJson(json);
}

/// @nodoc
class _$CurrentConditionTearOff {
  const _$CurrentConditionTearOff();

  _CurrentCondition call(
      String weatherCode,
      @JsonKey(name: "temp_C") String celsius,
      @JsonKey(name: "temp_F") String fahrenheit) {
    return _CurrentCondition(
      weatherCode,
      celsius,
      fahrenheit,
    );
  }

  CurrentCondition fromJson(Map<String, Object> json) {
    return CurrentCondition.fromJson(json);
  }
}

/// @nodoc
const $CurrentCondition = _$CurrentConditionTearOff();

/// @nodoc
mixin _$CurrentCondition {
  String get weatherCode => throw _privateConstructorUsedError;
  @JsonKey(name: "temp_C")
  String get celsius => throw _privateConstructorUsedError;
  @JsonKey(name: "temp_F")
  String get fahrenheit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrentConditionCopyWith<CurrentCondition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentConditionCopyWith<$Res> {
  factory $CurrentConditionCopyWith(
          CurrentCondition value, $Res Function(CurrentCondition) then) =
      _$CurrentConditionCopyWithImpl<$Res>;
  $Res call(
      {String weatherCode,
      @JsonKey(name: "temp_C") String celsius,
      @JsonKey(name: "temp_F") String fahrenheit});
}

/// @nodoc
class _$CurrentConditionCopyWithImpl<$Res>
    implements $CurrentConditionCopyWith<$Res> {
  _$CurrentConditionCopyWithImpl(this._value, this._then);

  final CurrentCondition _value;
  // ignore: unused_field
  final $Res Function(CurrentCondition) _then;

  @override
  $Res call({
    Object? weatherCode = freezed,
    Object? celsius = freezed,
    Object? fahrenheit = freezed,
  }) {
    return _then(_value.copyWith(
      weatherCode: weatherCode == freezed
          ? _value.weatherCode
          : weatherCode // ignore: cast_nullable_to_non_nullable
              as String,
      celsius: celsius == freezed
          ? _value.celsius
          : celsius // ignore: cast_nullable_to_non_nullable
              as String,
      fahrenheit: fahrenheit == freezed
          ? _value.fahrenheit
          : fahrenheit // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$CurrentConditionCopyWith<$Res>
    implements $CurrentConditionCopyWith<$Res> {
  factory _$CurrentConditionCopyWith(
          _CurrentCondition value, $Res Function(_CurrentCondition) then) =
      __$CurrentConditionCopyWithImpl<$Res>;
  @override
  $Res call(
      {String weatherCode,
      @JsonKey(name: "temp_C") String celsius,
      @JsonKey(name: "temp_F") String fahrenheit});
}

/// @nodoc
class __$CurrentConditionCopyWithImpl<$Res>
    extends _$CurrentConditionCopyWithImpl<$Res>
    implements _$CurrentConditionCopyWith<$Res> {
  __$CurrentConditionCopyWithImpl(
      _CurrentCondition _value, $Res Function(_CurrentCondition) _then)
      : super(_value, (v) => _then(v as _CurrentCondition));

  @override
  _CurrentCondition get _value => super._value as _CurrentCondition;

  @override
  $Res call({
    Object? weatherCode = freezed,
    Object? celsius = freezed,
    Object? fahrenheit = freezed,
  }) {
    return _then(_CurrentCondition(
      weatherCode == freezed
          ? _value.weatherCode
          : weatherCode // ignore: cast_nullable_to_non_nullable
              as String,
      celsius == freezed
          ? _value.celsius
          : celsius // ignore: cast_nullable_to_non_nullable
              as String,
      fahrenheit == freezed
          ? _value.fahrenheit
          : fahrenheit // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CurrentCondition implements _CurrentCondition {
  _$_CurrentCondition(this.weatherCode, @JsonKey(name: "temp_C") this.celsius,
      @JsonKey(name: "temp_F") this.fahrenheit);

  factory _$_CurrentCondition.fromJson(Map<String, dynamic> json) =>
      _$$_CurrentConditionFromJson(json);

  @override
  final String weatherCode;
  @override
  @JsonKey(name: "temp_C")
  final String celsius;
  @override
  @JsonKey(name: "temp_F")
  final String fahrenheit;

  @override
  String toString() {
    return 'CurrentCondition(weatherCode: $weatherCode, celsius: $celsius, fahrenheit: $fahrenheit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CurrentCondition &&
            (identical(other.weatherCode, weatherCode) ||
                const DeepCollectionEquality()
                    .equals(other.weatherCode, weatherCode)) &&
            (identical(other.celsius, celsius) ||
                const DeepCollectionEquality()
                    .equals(other.celsius, celsius)) &&
            (identical(other.fahrenheit, fahrenheit) ||
                const DeepCollectionEquality()
                    .equals(other.fahrenheit, fahrenheit)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(weatherCode) ^
      const DeepCollectionEquality().hash(celsius) ^
      const DeepCollectionEquality().hash(fahrenheit);

  @JsonKey(ignore: true)
  @override
  _$CurrentConditionCopyWith<_CurrentCondition> get copyWith =>
      __$CurrentConditionCopyWithImpl<_CurrentCondition>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CurrentConditionToJson(this);
  }
}

abstract class _CurrentCondition implements CurrentCondition {
  factory _CurrentCondition(
      String weatherCode,
      @JsonKey(name: "temp_C") String celsius,
      @JsonKey(name: "temp_F") String fahrenheit) = _$_CurrentCondition;

  factory _CurrentCondition.fromJson(Map<String, dynamic> json) =
      _$_CurrentCondition.fromJson;

  @override
  String get weatherCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "temp_C")
  String get celsius => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "temp_F")
  String get fahrenheit => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CurrentConditionCopyWith<_CurrentCondition> get copyWith =>
      throw _privateConstructorUsedError;
}

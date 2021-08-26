// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ClockModelTearOff {
  const _$ClockModelTearOff();

  _ClockModel call(
      {required bool is24HourFormat,
      required String location,
      required num temperature,
      required num high,
      required num low,
      required WeatherCondition weatherCondition,
      required TemperatureUnit unit,
      required ThemeMode themeMode,
      required bool configButtonShown}) {
    return _ClockModel(
      is24HourFormat: is24HourFormat,
      location: location,
      temperature: temperature,
      high: high,
      low: low,
      weatherCondition: weatherCondition,
      unit: unit,
      themeMode: themeMode,
      configButtonShown: configButtonShown,
    );
  }
}

/// @nodoc
const $ClockModel = _$ClockModelTearOff();

/// @nodoc
mixin _$ClockModel {
  bool get is24HourFormat => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;
  num get temperature => throw _privateConstructorUsedError;
  num get high => throw _privateConstructorUsedError;
  num get low => throw _privateConstructorUsedError;
  WeatherCondition get weatherCondition => throw _privateConstructorUsedError;
  TemperatureUnit get unit => throw _privateConstructorUsedError;
  ThemeMode get themeMode => throw _privateConstructorUsedError;
  bool get configButtonShown => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ClockModelCopyWith<ClockModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClockModelCopyWith<$Res> {
  factory $ClockModelCopyWith(
          ClockModel value, $Res Function(ClockModel) then) =
      _$ClockModelCopyWithImpl<$Res>;
  $Res call(
      {bool is24HourFormat,
      String location,
      num temperature,
      num high,
      num low,
      WeatherCondition weatherCondition,
      TemperatureUnit unit,
      ThemeMode themeMode,
      bool configButtonShown});

  $WeatherConditionCopyWith<$Res> get weatherCondition;
  $TemperatureUnitCopyWith<$Res> get unit;
}

/// @nodoc
class _$ClockModelCopyWithImpl<$Res> implements $ClockModelCopyWith<$Res> {
  _$ClockModelCopyWithImpl(this._value, this._then);

  final ClockModel _value;
  // ignore: unused_field
  final $Res Function(ClockModel) _then;

  @override
  $Res call({
    Object? is24HourFormat = freezed,
    Object? location = freezed,
    Object? temperature = freezed,
    Object? high = freezed,
    Object? low = freezed,
    Object? weatherCondition = freezed,
    Object? unit = freezed,
    Object? themeMode = freezed,
    Object? configButtonShown = freezed,
  }) {
    return _then(_value.copyWith(
      is24HourFormat: is24HourFormat == freezed
          ? _value.is24HourFormat
          : is24HourFormat // ignore: cast_nullable_to_non_nullable
              as bool,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      temperature: temperature == freezed
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as num,
      high: high == freezed
          ? _value.high
          : high // ignore: cast_nullable_to_non_nullable
              as num,
      low: low == freezed
          ? _value.low
          : low // ignore: cast_nullable_to_non_nullable
              as num,
      weatherCondition: weatherCondition == freezed
          ? _value.weatherCondition
          : weatherCondition // ignore: cast_nullable_to_non_nullable
              as WeatherCondition,
      unit: unit == freezed
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as TemperatureUnit,
      themeMode: themeMode == freezed
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
      configButtonShown: configButtonShown == freezed
          ? _value.configButtonShown
          : configButtonShown // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $WeatherConditionCopyWith<$Res> get weatherCondition {
    return $WeatherConditionCopyWith<$Res>(_value.weatherCondition, (value) {
      return _then(_value.copyWith(weatherCondition: value));
    });
  }

  @override
  $TemperatureUnitCopyWith<$Res> get unit {
    return $TemperatureUnitCopyWith<$Res>(_value.unit, (value) {
      return _then(_value.copyWith(unit: value));
    });
  }
}

/// @nodoc
abstract class _$ClockModelCopyWith<$Res> implements $ClockModelCopyWith<$Res> {
  factory _$ClockModelCopyWith(
          _ClockModel value, $Res Function(_ClockModel) then) =
      __$ClockModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool is24HourFormat,
      String location,
      num temperature,
      num high,
      num low,
      WeatherCondition weatherCondition,
      TemperatureUnit unit,
      ThemeMode themeMode,
      bool configButtonShown});

  @override
  $WeatherConditionCopyWith<$Res> get weatherCondition;
  @override
  $TemperatureUnitCopyWith<$Res> get unit;
}

/// @nodoc
class __$ClockModelCopyWithImpl<$Res> extends _$ClockModelCopyWithImpl<$Res>
    implements _$ClockModelCopyWith<$Res> {
  __$ClockModelCopyWithImpl(
      _ClockModel _value, $Res Function(_ClockModel) _then)
      : super(_value, (v) => _then(v as _ClockModel));

  @override
  _ClockModel get _value => super._value as _ClockModel;

  @override
  $Res call({
    Object? is24HourFormat = freezed,
    Object? location = freezed,
    Object? temperature = freezed,
    Object? high = freezed,
    Object? low = freezed,
    Object? weatherCondition = freezed,
    Object? unit = freezed,
    Object? themeMode = freezed,
    Object? configButtonShown = freezed,
  }) {
    return _then(_ClockModel(
      is24HourFormat: is24HourFormat == freezed
          ? _value.is24HourFormat
          : is24HourFormat // ignore: cast_nullable_to_non_nullable
              as bool,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      temperature: temperature == freezed
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as num,
      high: high == freezed
          ? _value.high
          : high // ignore: cast_nullable_to_non_nullable
              as num,
      low: low == freezed
          ? _value.low
          : low // ignore: cast_nullable_to_non_nullable
              as num,
      weatherCondition: weatherCondition == freezed
          ? _value.weatherCondition
          : weatherCondition // ignore: cast_nullable_to_non_nullable
              as WeatherCondition,
      unit: unit == freezed
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as TemperatureUnit,
      themeMode: themeMode == freezed
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
      configButtonShown: configButtonShown == freezed
          ? _value.configButtonShown
          : configButtonShown // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ClockModel extends _ClockModel with DiagnosticableTreeMixin {
  _$_ClockModel(
      {required this.is24HourFormat,
      required this.location,
      required this.temperature,
      required this.high,
      required this.low,
      required this.weatherCondition,
      required this.unit,
      required this.themeMode,
      required this.configButtonShown})
      : super._();

  @override
  final bool is24HourFormat;
  @override
  final String location;
  @override
  final num temperature;
  @override
  final num high;
  @override
  final num low;
  @override
  final WeatherCondition weatherCondition;
  @override
  final TemperatureUnit unit;
  @override
  final ThemeMode themeMode;
  @override
  final bool configButtonShown;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ClockModel(is24HourFormat: $is24HourFormat, location: $location, temperature: $temperature, high: $high, low: $low, weatherCondition: $weatherCondition, unit: $unit, themeMode: $themeMode, configButtonShown: $configButtonShown)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ClockModel'))
      ..add(DiagnosticsProperty('is24HourFormat', is24HourFormat))
      ..add(DiagnosticsProperty('location', location))
      ..add(DiagnosticsProperty('temperature', temperature))
      ..add(DiagnosticsProperty('high', high))
      ..add(DiagnosticsProperty('low', low))
      ..add(DiagnosticsProperty('weatherCondition', weatherCondition))
      ..add(DiagnosticsProperty('unit', unit))
      ..add(DiagnosticsProperty('themeMode', themeMode))
      ..add(DiagnosticsProperty('configButtonShown', configButtonShown));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ClockModel &&
            (identical(other.is24HourFormat, is24HourFormat) ||
                const DeepCollectionEquality()
                    .equals(other.is24HourFormat, is24HourFormat)) &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)) &&
            (identical(other.temperature, temperature) ||
                const DeepCollectionEquality()
                    .equals(other.temperature, temperature)) &&
            (identical(other.high, high) ||
                const DeepCollectionEquality().equals(other.high, high)) &&
            (identical(other.low, low) ||
                const DeepCollectionEquality().equals(other.low, low)) &&
            (identical(other.weatherCondition, weatherCondition) ||
                const DeepCollectionEquality()
                    .equals(other.weatherCondition, weatherCondition)) &&
            (identical(other.unit, unit) ||
                const DeepCollectionEquality().equals(other.unit, unit)) &&
            (identical(other.themeMode, themeMode) ||
                const DeepCollectionEquality()
                    .equals(other.themeMode, themeMode)) &&
            (identical(other.configButtonShown, configButtonShown) ||
                const DeepCollectionEquality()
                    .equals(other.configButtonShown, configButtonShown)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(is24HourFormat) ^
      const DeepCollectionEquality().hash(location) ^
      const DeepCollectionEquality().hash(temperature) ^
      const DeepCollectionEquality().hash(high) ^
      const DeepCollectionEquality().hash(low) ^
      const DeepCollectionEquality().hash(weatherCondition) ^
      const DeepCollectionEquality().hash(unit) ^
      const DeepCollectionEquality().hash(themeMode) ^
      const DeepCollectionEquality().hash(configButtonShown);

  @JsonKey(ignore: true)
  @override
  _$ClockModelCopyWith<_ClockModel> get copyWith =>
      __$ClockModelCopyWithImpl<_ClockModel>(this, _$identity);
}

abstract class _ClockModel extends ClockModel {
  factory _ClockModel(
      {required bool is24HourFormat,
      required String location,
      required num temperature,
      required num high,
      required num low,
      required WeatherCondition weatherCondition,
      required TemperatureUnit unit,
      required ThemeMode themeMode,
      required bool configButtonShown}) = _$_ClockModel;
  _ClockModel._() : super._();

  @override
  bool get is24HourFormat => throw _privateConstructorUsedError;
  @override
  String get location => throw _privateConstructorUsedError;
  @override
  num get temperature => throw _privateConstructorUsedError;
  @override
  num get high => throw _privateConstructorUsedError;
  @override
  num get low => throw _privateConstructorUsedError;
  @override
  WeatherCondition get weatherCondition => throw _privateConstructorUsedError;
  @override
  TemperatureUnit get unit => throw _privateConstructorUsedError;
  @override
  ThemeMode get themeMode => throw _privateConstructorUsedError;
  @override
  bool get configButtonShown => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ClockModelCopyWith<_ClockModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$WeatherConditionTearOff {
  const _$WeatherConditionTearOff();

  Cloudy cloudy() {
    return Cloudy();
  }

  Foggy foggy() {
    return Foggy();
  }

  Rainy rainy() {
    return Rainy();
  }

  Snowy snowy() {
    return Snowy();
  }

  Sunny sunny() {
    return Sunny();
  }

  Thunderstorm thunderstorm() {
    return Thunderstorm();
  }

  Windy windy() {
    return Windy();
  }
}

/// @nodoc
const $WeatherCondition = _$WeatherConditionTearOff();

/// @nodoc
mixin _$WeatherCondition {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cloudy,
    required TResult Function() foggy,
    required TResult Function() rainy,
    required TResult Function() snowy,
    required TResult Function() sunny,
    required TResult Function() thunderstorm,
    required TResult Function() windy,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? cloudy,
    TResult Function()? foggy,
    TResult Function()? rainy,
    TResult Function()? snowy,
    TResult Function()? sunny,
    TResult Function()? thunderstorm,
    TResult Function()? windy,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cloudy,
    TResult Function()? foggy,
    TResult Function()? rainy,
    TResult Function()? snowy,
    TResult Function()? sunny,
    TResult Function()? thunderstorm,
    TResult Function()? windy,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Cloudy value) cloudy,
    required TResult Function(Foggy value) foggy,
    required TResult Function(Rainy value) rainy,
    required TResult Function(Snowy value) snowy,
    required TResult Function(Sunny value) sunny,
    required TResult Function(Thunderstorm value) thunderstorm,
    required TResult Function(Windy value) windy,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Cloudy value)? cloudy,
    TResult Function(Foggy value)? foggy,
    TResult Function(Rainy value)? rainy,
    TResult Function(Snowy value)? snowy,
    TResult Function(Sunny value)? sunny,
    TResult Function(Thunderstorm value)? thunderstorm,
    TResult Function(Windy value)? windy,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Cloudy value)? cloudy,
    TResult Function(Foggy value)? foggy,
    TResult Function(Rainy value)? rainy,
    TResult Function(Snowy value)? snowy,
    TResult Function(Sunny value)? sunny,
    TResult Function(Thunderstorm value)? thunderstorm,
    TResult Function(Windy value)? windy,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherConditionCopyWith<$Res> {
  factory $WeatherConditionCopyWith(
          WeatherCondition value, $Res Function(WeatherCondition) then) =
      _$WeatherConditionCopyWithImpl<$Res>;
}

/// @nodoc
class _$WeatherConditionCopyWithImpl<$Res>
    implements $WeatherConditionCopyWith<$Res> {
  _$WeatherConditionCopyWithImpl(this._value, this._then);

  final WeatherCondition _value;
  // ignore: unused_field
  final $Res Function(WeatherCondition) _then;
}

/// @nodoc
abstract class $CloudyCopyWith<$Res> {
  factory $CloudyCopyWith(Cloudy value, $Res Function(Cloudy) then) =
      _$CloudyCopyWithImpl<$Res>;
}

/// @nodoc
class _$CloudyCopyWithImpl<$Res> extends _$WeatherConditionCopyWithImpl<$Res>
    implements $CloudyCopyWith<$Res> {
  _$CloudyCopyWithImpl(Cloudy _value, $Res Function(Cloudy) _then)
      : super(_value, (v) => _then(v as Cloudy));

  @override
  Cloudy get _value => super._value as Cloudy;
}

/// @nodoc

class _$Cloudy extends Cloudy with DiagnosticableTreeMixin {
  _$Cloudy() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WeatherCondition.cloudy()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'WeatherCondition.cloudy'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Cloudy);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cloudy,
    required TResult Function() foggy,
    required TResult Function() rainy,
    required TResult Function() snowy,
    required TResult Function() sunny,
    required TResult Function() thunderstorm,
    required TResult Function() windy,
  }) {
    return cloudy();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? cloudy,
    TResult Function()? foggy,
    TResult Function()? rainy,
    TResult Function()? snowy,
    TResult Function()? sunny,
    TResult Function()? thunderstorm,
    TResult Function()? windy,
  }) {
    return cloudy?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cloudy,
    TResult Function()? foggy,
    TResult Function()? rainy,
    TResult Function()? snowy,
    TResult Function()? sunny,
    TResult Function()? thunderstorm,
    TResult Function()? windy,
    required TResult orElse(),
  }) {
    if (cloudy != null) {
      return cloudy();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Cloudy value) cloudy,
    required TResult Function(Foggy value) foggy,
    required TResult Function(Rainy value) rainy,
    required TResult Function(Snowy value) snowy,
    required TResult Function(Sunny value) sunny,
    required TResult Function(Thunderstorm value) thunderstorm,
    required TResult Function(Windy value) windy,
  }) {
    return cloudy(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Cloudy value)? cloudy,
    TResult Function(Foggy value)? foggy,
    TResult Function(Rainy value)? rainy,
    TResult Function(Snowy value)? snowy,
    TResult Function(Sunny value)? sunny,
    TResult Function(Thunderstorm value)? thunderstorm,
    TResult Function(Windy value)? windy,
  }) {
    return cloudy?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Cloudy value)? cloudy,
    TResult Function(Foggy value)? foggy,
    TResult Function(Rainy value)? rainy,
    TResult Function(Snowy value)? snowy,
    TResult Function(Sunny value)? sunny,
    TResult Function(Thunderstorm value)? thunderstorm,
    TResult Function(Windy value)? windy,
    required TResult orElse(),
  }) {
    if (cloudy != null) {
      return cloudy(this);
    }
    return orElse();
  }
}

abstract class Cloudy extends WeatherCondition {
  factory Cloudy() = _$Cloudy;
  Cloudy._() : super._();
}

/// @nodoc
abstract class $FoggyCopyWith<$Res> {
  factory $FoggyCopyWith(Foggy value, $Res Function(Foggy) then) =
      _$FoggyCopyWithImpl<$Res>;
}

/// @nodoc
class _$FoggyCopyWithImpl<$Res> extends _$WeatherConditionCopyWithImpl<$Res>
    implements $FoggyCopyWith<$Res> {
  _$FoggyCopyWithImpl(Foggy _value, $Res Function(Foggy) _then)
      : super(_value, (v) => _then(v as Foggy));

  @override
  Foggy get _value => super._value as Foggy;
}

/// @nodoc

class _$Foggy extends Foggy with DiagnosticableTreeMixin {
  _$Foggy() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WeatherCondition.foggy()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'WeatherCondition.foggy'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Foggy);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cloudy,
    required TResult Function() foggy,
    required TResult Function() rainy,
    required TResult Function() snowy,
    required TResult Function() sunny,
    required TResult Function() thunderstorm,
    required TResult Function() windy,
  }) {
    return foggy();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? cloudy,
    TResult Function()? foggy,
    TResult Function()? rainy,
    TResult Function()? snowy,
    TResult Function()? sunny,
    TResult Function()? thunderstorm,
    TResult Function()? windy,
  }) {
    return foggy?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cloudy,
    TResult Function()? foggy,
    TResult Function()? rainy,
    TResult Function()? snowy,
    TResult Function()? sunny,
    TResult Function()? thunderstorm,
    TResult Function()? windy,
    required TResult orElse(),
  }) {
    if (foggy != null) {
      return foggy();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Cloudy value) cloudy,
    required TResult Function(Foggy value) foggy,
    required TResult Function(Rainy value) rainy,
    required TResult Function(Snowy value) snowy,
    required TResult Function(Sunny value) sunny,
    required TResult Function(Thunderstorm value) thunderstorm,
    required TResult Function(Windy value) windy,
  }) {
    return foggy(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Cloudy value)? cloudy,
    TResult Function(Foggy value)? foggy,
    TResult Function(Rainy value)? rainy,
    TResult Function(Snowy value)? snowy,
    TResult Function(Sunny value)? sunny,
    TResult Function(Thunderstorm value)? thunderstorm,
    TResult Function(Windy value)? windy,
  }) {
    return foggy?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Cloudy value)? cloudy,
    TResult Function(Foggy value)? foggy,
    TResult Function(Rainy value)? rainy,
    TResult Function(Snowy value)? snowy,
    TResult Function(Sunny value)? sunny,
    TResult Function(Thunderstorm value)? thunderstorm,
    TResult Function(Windy value)? windy,
    required TResult orElse(),
  }) {
    if (foggy != null) {
      return foggy(this);
    }
    return orElse();
  }
}

abstract class Foggy extends WeatherCondition {
  factory Foggy() = _$Foggy;
  Foggy._() : super._();
}

/// @nodoc
abstract class $RainyCopyWith<$Res> {
  factory $RainyCopyWith(Rainy value, $Res Function(Rainy) then) =
      _$RainyCopyWithImpl<$Res>;
}

/// @nodoc
class _$RainyCopyWithImpl<$Res> extends _$WeatherConditionCopyWithImpl<$Res>
    implements $RainyCopyWith<$Res> {
  _$RainyCopyWithImpl(Rainy _value, $Res Function(Rainy) _then)
      : super(_value, (v) => _then(v as Rainy));

  @override
  Rainy get _value => super._value as Rainy;
}

/// @nodoc

class _$Rainy extends Rainy with DiagnosticableTreeMixin {
  _$Rainy() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WeatherCondition.rainy()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'WeatherCondition.rainy'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Rainy);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cloudy,
    required TResult Function() foggy,
    required TResult Function() rainy,
    required TResult Function() snowy,
    required TResult Function() sunny,
    required TResult Function() thunderstorm,
    required TResult Function() windy,
  }) {
    return rainy();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? cloudy,
    TResult Function()? foggy,
    TResult Function()? rainy,
    TResult Function()? snowy,
    TResult Function()? sunny,
    TResult Function()? thunderstorm,
    TResult Function()? windy,
  }) {
    return rainy?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cloudy,
    TResult Function()? foggy,
    TResult Function()? rainy,
    TResult Function()? snowy,
    TResult Function()? sunny,
    TResult Function()? thunderstorm,
    TResult Function()? windy,
    required TResult orElse(),
  }) {
    if (rainy != null) {
      return rainy();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Cloudy value) cloudy,
    required TResult Function(Foggy value) foggy,
    required TResult Function(Rainy value) rainy,
    required TResult Function(Snowy value) snowy,
    required TResult Function(Sunny value) sunny,
    required TResult Function(Thunderstorm value) thunderstorm,
    required TResult Function(Windy value) windy,
  }) {
    return rainy(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Cloudy value)? cloudy,
    TResult Function(Foggy value)? foggy,
    TResult Function(Rainy value)? rainy,
    TResult Function(Snowy value)? snowy,
    TResult Function(Sunny value)? sunny,
    TResult Function(Thunderstorm value)? thunderstorm,
    TResult Function(Windy value)? windy,
  }) {
    return rainy?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Cloudy value)? cloudy,
    TResult Function(Foggy value)? foggy,
    TResult Function(Rainy value)? rainy,
    TResult Function(Snowy value)? snowy,
    TResult Function(Sunny value)? sunny,
    TResult Function(Thunderstorm value)? thunderstorm,
    TResult Function(Windy value)? windy,
    required TResult orElse(),
  }) {
    if (rainy != null) {
      return rainy(this);
    }
    return orElse();
  }
}

abstract class Rainy extends WeatherCondition {
  factory Rainy() = _$Rainy;
  Rainy._() : super._();
}

/// @nodoc
abstract class $SnowyCopyWith<$Res> {
  factory $SnowyCopyWith(Snowy value, $Res Function(Snowy) then) =
      _$SnowyCopyWithImpl<$Res>;
}

/// @nodoc
class _$SnowyCopyWithImpl<$Res> extends _$WeatherConditionCopyWithImpl<$Res>
    implements $SnowyCopyWith<$Res> {
  _$SnowyCopyWithImpl(Snowy _value, $Res Function(Snowy) _then)
      : super(_value, (v) => _then(v as Snowy));

  @override
  Snowy get _value => super._value as Snowy;
}

/// @nodoc

class _$Snowy extends Snowy with DiagnosticableTreeMixin {
  _$Snowy() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WeatherCondition.snowy()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'WeatherCondition.snowy'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Snowy);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cloudy,
    required TResult Function() foggy,
    required TResult Function() rainy,
    required TResult Function() snowy,
    required TResult Function() sunny,
    required TResult Function() thunderstorm,
    required TResult Function() windy,
  }) {
    return snowy();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? cloudy,
    TResult Function()? foggy,
    TResult Function()? rainy,
    TResult Function()? snowy,
    TResult Function()? sunny,
    TResult Function()? thunderstorm,
    TResult Function()? windy,
  }) {
    return snowy?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cloudy,
    TResult Function()? foggy,
    TResult Function()? rainy,
    TResult Function()? snowy,
    TResult Function()? sunny,
    TResult Function()? thunderstorm,
    TResult Function()? windy,
    required TResult orElse(),
  }) {
    if (snowy != null) {
      return snowy();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Cloudy value) cloudy,
    required TResult Function(Foggy value) foggy,
    required TResult Function(Rainy value) rainy,
    required TResult Function(Snowy value) snowy,
    required TResult Function(Sunny value) sunny,
    required TResult Function(Thunderstorm value) thunderstorm,
    required TResult Function(Windy value) windy,
  }) {
    return snowy(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Cloudy value)? cloudy,
    TResult Function(Foggy value)? foggy,
    TResult Function(Rainy value)? rainy,
    TResult Function(Snowy value)? snowy,
    TResult Function(Sunny value)? sunny,
    TResult Function(Thunderstorm value)? thunderstorm,
    TResult Function(Windy value)? windy,
  }) {
    return snowy?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Cloudy value)? cloudy,
    TResult Function(Foggy value)? foggy,
    TResult Function(Rainy value)? rainy,
    TResult Function(Snowy value)? snowy,
    TResult Function(Sunny value)? sunny,
    TResult Function(Thunderstorm value)? thunderstorm,
    TResult Function(Windy value)? windy,
    required TResult orElse(),
  }) {
    if (snowy != null) {
      return snowy(this);
    }
    return orElse();
  }
}

abstract class Snowy extends WeatherCondition {
  factory Snowy() = _$Snowy;
  Snowy._() : super._();
}

/// @nodoc
abstract class $SunnyCopyWith<$Res> {
  factory $SunnyCopyWith(Sunny value, $Res Function(Sunny) then) =
      _$SunnyCopyWithImpl<$Res>;
}

/// @nodoc
class _$SunnyCopyWithImpl<$Res> extends _$WeatherConditionCopyWithImpl<$Res>
    implements $SunnyCopyWith<$Res> {
  _$SunnyCopyWithImpl(Sunny _value, $Res Function(Sunny) _then)
      : super(_value, (v) => _then(v as Sunny));

  @override
  Sunny get _value => super._value as Sunny;
}

/// @nodoc

class _$Sunny extends Sunny with DiagnosticableTreeMixin {
  _$Sunny() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WeatherCondition.sunny()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'WeatherCondition.sunny'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Sunny);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cloudy,
    required TResult Function() foggy,
    required TResult Function() rainy,
    required TResult Function() snowy,
    required TResult Function() sunny,
    required TResult Function() thunderstorm,
    required TResult Function() windy,
  }) {
    return sunny();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? cloudy,
    TResult Function()? foggy,
    TResult Function()? rainy,
    TResult Function()? snowy,
    TResult Function()? sunny,
    TResult Function()? thunderstorm,
    TResult Function()? windy,
  }) {
    return sunny?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cloudy,
    TResult Function()? foggy,
    TResult Function()? rainy,
    TResult Function()? snowy,
    TResult Function()? sunny,
    TResult Function()? thunderstorm,
    TResult Function()? windy,
    required TResult orElse(),
  }) {
    if (sunny != null) {
      return sunny();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Cloudy value) cloudy,
    required TResult Function(Foggy value) foggy,
    required TResult Function(Rainy value) rainy,
    required TResult Function(Snowy value) snowy,
    required TResult Function(Sunny value) sunny,
    required TResult Function(Thunderstorm value) thunderstorm,
    required TResult Function(Windy value) windy,
  }) {
    return sunny(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Cloudy value)? cloudy,
    TResult Function(Foggy value)? foggy,
    TResult Function(Rainy value)? rainy,
    TResult Function(Snowy value)? snowy,
    TResult Function(Sunny value)? sunny,
    TResult Function(Thunderstorm value)? thunderstorm,
    TResult Function(Windy value)? windy,
  }) {
    return sunny?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Cloudy value)? cloudy,
    TResult Function(Foggy value)? foggy,
    TResult Function(Rainy value)? rainy,
    TResult Function(Snowy value)? snowy,
    TResult Function(Sunny value)? sunny,
    TResult Function(Thunderstorm value)? thunderstorm,
    TResult Function(Windy value)? windy,
    required TResult orElse(),
  }) {
    if (sunny != null) {
      return sunny(this);
    }
    return orElse();
  }
}

abstract class Sunny extends WeatherCondition {
  factory Sunny() = _$Sunny;
  Sunny._() : super._();
}

/// @nodoc
abstract class $ThunderstormCopyWith<$Res> {
  factory $ThunderstormCopyWith(
          Thunderstorm value, $Res Function(Thunderstorm) then) =
      _$ThunderstormCopyWithImpl<$Res>;
}

/// @nodoc
class _$ThunderstormCopyWithImpl<$Res>
    extends _$WeatherConditionCopyWithImpl<$Res>
    implements $ThunderstormCopyWith<$Res> {
  _$ThunderstormCopyWithImpl(
      Thunderstorm _value, $Res Function(Thunderstorm) _then)
      : super(_value, (v) => _then(v as Thunderstorm));

  @override
  Thunderstorm get _value => super._value as Thunderstorm;
}

/// @nodoc

class _$Thunderstorm extends Thunderstorm with DiagnosticableTreeMixin {
  _$Thunderstorm() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WeatherCondition.thunderstorm()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WeatherCondition.thunderstorm'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Thunderstorm);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cloudy,
    required TResult Function() foggy,
    required TResult Function() rainy,
    required TResult Function() snowy,
    required TResult Function() sunny,
    required TResult Function() thunderstorm,
    required TResult Function() windy,
  }) {
    return thunderstorm();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? cloudy,
    TResult Function()? foggy,
    TResult Function()? rainy,
    TResult Function()? snowy,
    TResult Function()? sunny,
    TResult Function()? thunderstorm,
    TResult Function()? windy,
  }) {
    return thunderstorm?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cloudy,
    TResult Function()? foggy,
    TResult Function()? rainy,
    TResult Function()? snowy,
    TResult Function()? sunny,
    TResult Function()? thunderstorm,
    TResult Function()? windy,
    required TResult orElse(),
  }) {
    if (thunderstorm != null) {
      return thunderstorm();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Cloudy value) cloudy,
    required TResult Function(Foggy value) foggy,
    required TResult Function(Rainy value) rainy,
    required TResult Function(Snowy value) snowy,
    required TResult Function(Sunny value) sunny,
    required TResult Function(Thunderstorm value) thunderstorm,
    required TResult Function(Windy value) windy,
  }) {
    return thunderstorm(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Cloudy value)? cloudy,
    TResult Function(Foggy value)? foggy,
    TResult Function(Rainy value)? rainy,
    TResult Function(Snowy value)? snowy,
    TResult Function(Sunny value)? sunny,
    TResult Function(Thunderstorm value)? thunderstorm,
    TResult Function(Windy value)? windy,
  }) {
    return thunderstorm?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Cloudy value)? cloudy,
    TResult Function(Foggy value)? foggy,
    TResult Function(Rainy value)? rainy,
    TResult Function(Snowy value)? snowy,
    TResult Function(Sunny value)? sunny,
    TResult Function(Thunderstorm value)? thunderstorm,
    TResult Function(Windy value)? windy,
    required TResult orElse(),
  }) {
    if (thunderstorm != null) {
      return thunderstorm(this);
    }
    return orElse();
  }
}

abstract class Thunderstorm extends WeatherCondition {
  factory Thunderstorm() = _$Thunderstorm;
  Thunderstorm._() : super._();
}

/// @nodoc
abstract class $WindyCopyWith<$Res> {
  factory $WindyCopyWith(Windy value, $Res Function(Windy) then) =
      _$WindyCopyWithImpl<$Res>;
}

/// @nodoc
class _$WindyCopyWithImpl<$Res> extends _$WeatherConditionCopyWithImpl<$Res>
    implements $WindyCopyWith<$Res> {
  _$WindyCopyWithImpl(Windy _value, $Res Function(Windy) _then)
      : super(_value, (v) => _then(v as Windy));

  @override
  Windy get _value => super._value as Windy;
}

/// @nodoc

class _$Windy extends Windy with DiagnosticableTreeMixin {
  _$Windy() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WeatherCondition.windy()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'WeatherCondition.windy'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Windy);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cloudy,
    required TResult Function() foggy,
    required TResult Function() rainy,
    required TResult Function() snowy,
    required TResult Function() sunny,
    required TResult Function() thunderstorm,
    required TResult Function() windy,
  }) {
    return windy();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? cloudy,
    TResult Function()? foggy,
    TResult Function()? rainy,
    TResult Function()? snowy,
    TResult Function()? sunny,
    TResult Function()? thunderstorm,
    TResult Function()? windy,
  }) {
    return windy?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cloudy,
    TResult Function()? foggy,
    TResult Function()? rainy,
    TResult Function()? snowy,
    TResult Function()? sunny,
    TResult Function()? thunderstorm,
    TResult Function()? windy,
    required TResult orElse(),
  }) {
    if (windy != null) {
      return windy();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Cloudy value) cloudy,
    required TResult Function(Foggy value) foggy,
    required TResult Function(Rainy value) rainy,
    required TResult Function(Snowy value) snowy,
    required TResult Function(Sunny value) sunny,
    required TResult Function(Thunderstorm value) thunderstorm,
    required TResult Function(Windy value) windy,
  }) {
    return windy(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Cloudy value)? cloudy,
    TResult Function(Foggy value)? foggy,
    TResult Function(Rainy value)? rainy,
    TResult Function(Snowy value)? snowy,
    TResult Function(Sunny value)? sunny,
    TResult Function(Thunderstorm value)? thunderstorm,
    TResult Function(Windy value)? windy,
  }) {
    return windy?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Cloudy value)? cloudy,
    TResult Function(Foggy value)? foggy,
    TResult Function(Rainy value)? rainy,
    TResult Function(Snowy value)? snowy,
    TResult Function(Sunny value)? sunny,
    TResult Function(Thunderstorm value)? thunderstorm,
    TResult Function(Windy value)? windy,
    required TResult orElse(),
  }) {
    if (windy != null) {
      return windy(this);
    }
    return orElse();
  }
}

abstract class Windy extends WeatherCondition {
  factory Windy() = _$Windy;
  Windy._() : super._();
}

/// @nodoc
class _$TemperatureUnitTearOff {
  const _$TemperatureUnitTearOff();

  Fahrenheit fahrenheit() {
    return Fahrenheit();
  }

  Celsius celsius() {
    return Celsius();
  }
}

/// @nodoc
const $TemperatureUnit = _$TemperatureUnitTearOff();

/// @nodoc
mixin _$TemperatureUnit {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fahrenheit,
    required TResult Function() celsius,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fahrenheit,
    TResult Function()? celsius,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fahrenheit,
    TResult Function()? celsius,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Fahrenheit value) fahrenheit,
    required TResult Function(Celsius value) celsius,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Fahrenheit value)? fahrenheit,
    TResult Function(Celsius value)? celsius,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Fahrenheit value)? fahrenheit,
    TResult Function(Celsius value)? celsius,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TemperatureUnitCopyWith<$Res> {
  factory $TemperatureUnitCopyWith(
          TemperatureUnit value, $Res Function(TemperatureUnit) then) =
      _$TemperatureUnitCopyWithImpl<$Res>;
}

/// @nodoc
class _$TemperatureUnitCopyWithImpl<$Res>
    implements $TemperatureUnitCopyWith<$Res> {
  _$TemperatureUnitCopyWithImpl(this._value, this._then);

  final TemperatureUnit _value;
  // ignore: unused_field
  final $Res Function(TemperatureUnit) _then;
}

/// @nodoc
abstract class $FahrenheitCopyWith<$Res> {
  factory $FahrenheitCopyWith(
          Fahrenheit value, $Res Function(Fahrenheit) then) =
      _$FahrenheitCopyWithImpl<$Res>;
}

/// @nodoc
class _$FahrenheitCopyWithImpl<$Res> extends _$TemperatureUnitCopyWithImpl<$Res>
    implements $FahrenheitCopyWith<$Res> {
  _$FahrenheitCopyWithImpl(Fahrenheit _value, $Res Function(Fahrenheit) _then)
      : super(_value, (v) => _then(v as Fahrenheit));

  @override
  Fahrenheit get _value => super._value as Fahrenheit;
}

/// @nodoc

class _$Fahrenheit extends Fahrenheit with DiagnosticableTreeMixin {
  _$Fahrenheit() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TemperatureUnit.fahrenheit()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'TemperatureUnit.fahrenheit'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Fahrenheit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fahrenheit,
    required TResult Function() celsius,
  }) {
    return fahrenheit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fahrenheit,
    TResult Function()? celsius,
  }) {
    return fahrenheit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fahrenheit,
    TResult Function()? celsius,
    required TResult orElse(),
  }) {
    if (fahrenheit != null) {
      return fahrenheit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Fahrenheit value) fahrenheit,
    required TResult Function(Celsius value) celsius,
  }) {
    return fahrenheit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Fahrenheit value)? fahrenheit,
    TResult Function(Celsius value)? celsius,
  }) {
    return fahrenheit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Fahrenheit value)? fahrenheit,
    TResult Function(Celsius value)? celsius,
    required TResult orElse(),
  }) {
    if (fahrenheit != null) {
      return fahrenheit(this);
    }
    return orElse();
  }
}

abstract class Fahrenheit extends TemperatureUnit {
  factory Fahrenheit() = _$Fahrenheit;
  Fahrenheit._() : super._();
}

/// @nodoc
abstract class $CelsiusCopyWith<$Res> {
  factory $CelsiusCopyWith(Celsius value, $Res Function(Celsius) then) =
      _$CelsiusCopyWithImpl<$Res>;
}

/// @nodoc
class _$CelsiusCopyWithImpl<$Res> extends _$TemperatureUnitCopyWithImpl<$Res>
    implements $CelsiusCopyWith<$Res> {
  _$CelsiusCopyWithImpl(Celsius _value, $Res Function(Celsius) _then)
      : super(_value, (v) => _then(v as Celsius));

  @override
  Celsius get _value => super._value as Celsius;
}

/// @nodoc

class _$Celsius extends Celsius with DiagnosticableTreeMixin {
  _$Celsius() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TemperatureUnit.celsius()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'TemperatureUnit.celsius'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Celsius);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fahrenheit,
    required TResult Function() celsius,
  }) {
    return celsius();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fahrenheit,
    TResult Function()? celsius,
  }) {
    return celsius?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fahrenheit,
    TResult Function()? celsius,
    required TResult orElse(),
  }) {
    if (celsius != null) {
      return celsius();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Fahrenheit value) fahrenheit,
    required TResult Function(Celsius value) celsius,
  }) {
    return celsius(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Fahrenheit value)? fahrenheit,
    TResult Function(Celsius value)? celsius,
  }) {
    return celsius?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Fahrenheit value)? fahrenheit,
    TResult Function(Celsius value)? celsius,
    required TResult orElse(),
  }) {
    if (celsius != null) {
      return celsius(this);
    }
    return orElse();
  }
}

abstract class Celsius extends TemperatureUnit {
  factory Celsius() = _$Celsius;
  Celsius._() : super._();
}

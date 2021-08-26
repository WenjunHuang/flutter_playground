// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'clock_model_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ClockModelEventTearOff {
  const _$ClockModelEventTearOff();

  InitializeEvent initialize() {
    return InitializeEvent();
  }

  SetLocationEvent setLocation(String location) {
    return SetLocationEvent(
      location,
    );
  }

  SetTemperatureEvent setTemperature(num temperature) {
    return SetTemperatureEvent(
      temperature,
    );
  }

  SetIs24HourFormatEvent setIs24HourFormat(bool is24HourFormat) {
    return SetIs24HourFormatEvent(
      is24HourFormat,
    );
  }

  SetWeatherConditionEvent setWeatherCondition(WeatherCondition condition) {
    return SetWeatherConditionEvent(
      condition,
    );
  }

  SetTemperatureUnitEvent setTemperatureUnit(TemperatureUnit unit) {
    return SetTemperatureUnitEvent(
      unit,
    );
  }

  SetThemeModeEvent setThemeMode(ThemeMode themeMode) {
    return SetThemeModeEvent(
      themeMode,
    );
  }

  SetConfigButtonShownEvent setConfigButtonShown(bool shown) {
    return SetConfigButtonShownEvent(
      shown,
    );
  }
}

/// @nodoc
const $ClockModelEvent = _$ClockModelEventTearOff();

/// @nodoc
mixin _$ClockModelEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(String location) setLocation,
    required TResult Function(num temperature) setTemperature,
    required TResult Function(bool is24HourFormat) setIs24HourFormat,
    required TResult Function(WeatherCondition condition) setWeatherCondition,
    required TResult Function(TemperatureUnit unit) setTemperatureUnit,
    required TResult Function(ThemeMode themeMode) setThemeMode,
    required TResult Function(bool shown) setConfigButtonShown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(String location)? setLocation,
    TResult Function(num temperature)? setTemperature,
    TResult Function(bool is24HourFormat)? setIs24HourFormat,
    TResult Function(WeatherCondition condition)? setWeatherCondition,
    TResult Function(TemperatureUnit unit)? setTemperatureUnit,
    TResult Function(ThemeMode themeMode)? setThemeMode,
    TResult Function(bool shown)? setConfigButtonShown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(String location)? setLocation,
    TResult Function(num temperature)? setTemperature,
    TResult Function(bool is24HourFormat)? setIs24HourFormat,
    TResult Function(WeatherCondition condition)? setWeatherCondition,
    TResult Function(TemperatureUnit unit)? setTemperatureUnit,
    TResult Function(ThemeMode themeMode)? setThemeMode,
    TResult Function(bool shown)? setConfigButtonShown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitializeEvent value) initialize,
    required TResult Function(SetLocationEvent value) setLocation,
    required TResult Function(SetTemperatureEvent value) setTemperature,
    required TResult Function(SetIs24HourFormatEvent value) setIs24HourFormat,
    required TResult Function(SetWeatherConditionEvent value)
        setWeatherCondition,
    required TResult Function(SetTemperatureUnitEvent value) setTemperatureUnit,
    required TResult Function(SetThemeModeEvent value) setThemeMode,
    required TResult Function(SetConfigButtonShownEvent value)
        setConfigButtonShown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitializeEvent value)? initialize,
    TResult Function(SetLocationEvent value)? setLocation,
    TResult Function(SetTemperatureEvent value)? setTemperature,
    TResult Function(SetIs24HourFormatEvent value)? setIs24HourFormat,
    TResult Function(SetWeatherConditionEvent value)? setWeatherCondition,
    TResult Function(SetTemperatureUnitEvent value)? setTemperatureUnit,
    TResult Function(SetThemeModeEvent value)? setThemeMode,
    TResult Function(SetConfigButtonShownEvent value)? setConfigButtonShown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitializeEvent value)? initialize,
    TResult Function(SetLocationEvent value)? setLocation,
    TResult Function(SetTemperatureEvent value)? setTemperature,
    TResult Function(SetIs24HourFormatEvent value)? setIs24HourFormat,
    TResult Function(SetWeatherConditionEvent value)? setWeatherCondition,
    TResult Function(SetTemperatureUnitEvent value)? setTemperatureUnit,
    TResult Function(SetThemeModeEvent value)? setThemeMode,
    TResult Function(SetConfigButtonShownEvent value)? setConfigButtonShown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClockModelEventCopyWith<$Res> {
  factory $ClockModelEventCopyWith(
          ClockModelEvent value, $Res Function(ClockModelEvent) then) =
      _$ClockModelEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ClockModelEventCopyWithImpl<$Res>
    implements $ClockModelEventCopyWith<$Res> {
  _$ClockModelEventCopyWithImpl(this._value, this._then);

  final ClockModelEvent _value;
  // ignore: unused_field
  final $Res Function(ClockModelEvent) _then;
}

/// @nodoc
abstract class $InitializeEventCopyWith<$Res> {
  factory $InitializeEventCopyWith(
          InitializeEvent value, $Res Function(InitializeEvent) then) =
      _$InitializeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitializeEventCopyWithImpl<$Res>
    extends _$ClockModelEventCopyWithImpl<$Res>
    implements $InitializeEventCopyWith<$Res> {
  _$InitializeEventCopyWithImpl(
      InitializeEvent _value, $Res Function(InitializeEvent) _then)
      : super(_value, (v) => _then(v as InitializeEvent));

  @override
  InitializeEvent get _value => super._value as InitializeEvent;
}

/// @nodoc

class _$InitializeEvent implements InitializeEvent {
  _$InitializeEvent();

  @override
  String toString() {
    return 'ClockModelEvent.initialize()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InitializeEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(String location) setLocation,
    required TResult Function(num temperature) setTemperature,
    required TResult Function(bool is24HourFormat) setIs24HourFormat,
    required TResult Function(WeatherCondition condition) setWeatherCondition,
    required TResult Function(TemperatureUnit unit) setTemperatureUnit,
    required TResult Function(ThemeMode themeMode) setThemeMode,
    required TResult Function(bool shown) setConfigButtonShown,
  }) {
    return initialize();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(String location)? setLocation,
    TResult Function(num temperature)? setTemperature,
    TResult Function(bool is24HourFormat)? setIs24HourFormat,
    TResult Function(WeatherCondition condition)? setWeatherCondition,
    TResult Function(TemperatureUnit unit)? setTemperatureUnit,
    TResult Function(ThemeMode themeMode)? setThemeMode,
    TResult Function(bool shown)? setConfigButtonShown,
  }) {
    return initialize?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(String location)? setLocation,
    TResult Function(num temperature)? setTemperature,
    TResult Function(bool is24HourFormat)? setIs24HourFormat,
    TResult Function(WeatherCondition condition)? setWeatherCondition,
    TResult Function(TemperatureUnit unit)? setTemperatureUnit,
    TResult Function(ThemeMode themeMode)? setThemeMode,
    TResult Function(bool shown)? setConfigButtonShown,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitializeEvent value) initialize,
    required TResult Function(SetLocationEvent value) setLocation,
    required TResult Function(SetTemperatureEvent value) setTemperature,
    required TResult Function(SetIs24HourFormatEvent value) setIs24HourFormat,
    required TResult Function(SetWeatherConditionEvent value)
        setWeatherCondition,
    required TResult Function(SetTemperatureUnitEvent value) setTemperatureUnit,
    required TResult Function(SetThemeModeEvent value) setThemeMode,
    required TResult Function(SetConfigButtonShownEvent value)
        setConfigButtonShown,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitializeEvent value)? initialize,
    TResult Function(SetLocationEvent value)? setLocation,
    TResult Function(SetTemperatureEvent value)? setTemperature,
    TResult Function(SetIs24HourFormatEvent value)? setIs24HourFormat,
    TResult Function(SetWeatherConditionEvent value)? setWeatherCondition,
    TResult Function(SetTemperatureUnitEvent value)? setTemperatureUnit,
    TResult Function(SetThemeModeEvent value)? setThemeMode,
    TResult Function(SetConfigButtonShownEvent value)? setConfigButtonShown,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitializeEvent value)? initialize,
    TResult Function(SetLocationEvent value)? setLocation,
    TResult Function(SetTemperatureEvent value)? setTemperature,
    TResult Function(SetIs24HourFormatEvent value)? setIs24HourFormat,
    TResult Function(SetWeatherConditionEvent value)? setWeatherCondition,
    TResult Function(SetTemperatureUnitEvent value)? setTemperatureUnit,
    TResult Function(SetThemeModeEvent value)? setThemeMode,
    TResult Function(SetConfigButtonShownEvent value)? setConfigButtonShown,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class InitializeEvent implements ClockModelEvent {
  factory InitializeEvent() = _$InitializeEvent;
}

/// @nodoc
abstract class $SetLocationEventCopyWith<$Res> {
  factory $SetLocationEventCopyWith(
          SetLocationEvent value, $Res Function(SetLocationEvent) then) =
      _$SetLocationEventCopyWithImpl<$Res>;
  $Res call({String location});
}

/// @nodoc
class _$SetLocationEventCopyWithImpl<$Res>
    extends _$ClockModelEventCopyWithImpl<$Res>
    implements $SetLocationEventCopyWith<$Res> {
  _$SetLocationEventCopyWithImpl(
      SetLocationEvent _value, $Res Function(SetLocationEvent) _then)
      : super(_value, (v) => _then(v as SetLocationEvent));

  @override
  SetLocationEvent get _value => super._value as SetLocationEvent;

  @override
  $Res call({
    Object? location = freezed,
  }) {
    return _then(SetLocationEvent(
      location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SetLocationEvent implements SetLocationEvent {
  _$SetLocationEvent(this.location);

  @override
  final String location;

  @override
  String toString() {
    return 'ClockModelEvent.setLocation(location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SetLocationEvent &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(location);

  @JsonKey(ignore: true)
  @override
  $SetLocationEventCopyWith<SetLocationEvent> get copyWith =>
      _$SetLocationEventCopyWithImpl<SetLocationEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(String location) setLocation,
    required TResult Function(num temperature) setTemperature,
    required TResult Function(bool is24HourFormat) setIs24HourFormat,
    required TResult Function(WeatherCondition condition) setWeatherCondition,
    required TResult Function(TemperatureUnit unit) setTemperatureUnit,
    required TResult Function(ThemeMode themeMode) setThemeMode,
    required TResult Function(bool shown) setConfigButtonShown,
  }) {
    return setLocation(location);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(String location)? setLocation,
    TResult Function(num temperature)? setTemperature,
    TResult Function(bool is24HourFormat)? setIs24HourFormat,
    TResult Function(WeatherCondition condition)? setWeatherCondition,
    TResult Function(TemperatureUnit unit)? setTemperatureUnit,
    TResult Function(ThemeMode themeMode)? setThemeMode,
    TResult Function(bool shown)? setConfigButtonShown,
  }) {
    return setLocation?.call(location);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(String location)? setLocation,
    TResult Function(num temperature)? setTemperature,
    TResult Function(bool is24HourFormat)? setIs24HourFormat,
    TResult Function(WeatherCondition condition)? setWeatherCondition,
    TResult Function(TemperatureUnit unit)? setTemperatureUnit,
    TResult Function(ThemeMode themeMode)? setThemeMode,
    TResult Function(bool shown)? setConfigButtonShown,
    required TResult orElse(),
  }) {
    if (setLocation != null) {
      return setLocation(location);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitializeEvent value) initialize,
    required TResult Function(SetLocationEvent value) setLocation,
    required TResult Function(SetTemperatureEvent value) setTemperature,
    required TResult Function(SetIs24HourFormatEvent value) setIs24HourFormat,
    required TResult Function(SetWeatherConditionEvent value)
        setWeatherCondition,
    required TResult Function(SetTemperatureUnitEvent value) setTemperatureUnit,
    required TResult Function(SetThemeModeEvent value) setThemeMode,
    required TResult Function(SetConfigButtonShownEvent value)
        setConfigButtonShown,
  }) {
    return setLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitializeEvent value)? initialize,
    TResult Function(SetLocationEvent value)? setLocation,
    TResult Function(SetTemperatureEvent value)? setTemperature,
    TResult Function(SetIs24HourFormatEvent value)? setIs24HourFormat,
    TResult Function(SetWeatherConditionEvent value)? setWeatherCondition,
    TResult Function(SetTemperatureUnitEvent value)? setTemperatureUnit,
    TResult Function(SetThemeModeEvent value)? setThemeMode,
    TResult Function(SetConfigButtonShownEvent value)? setConfigButtonShown,
  }) {
    return setLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitializeEvent value)? initialize,
    TResult Function(SetLocationEvent value)? setLocation,
    TResult Function(SetTemperatureEvent value)? setTemperature,
    TResult Function(SetIs24HourFormatEvent value)? setIs24HourFormat,
    TResult Function(SetWeatherConditionEvent value)? setWeatherCondition,
    TResult Function(SetTemperatureUnitEvent value)? setTemperatureUnit,
    TResult Function(SetThemeModeEvent value)? setThemeMode,
    TResult Function(SetConfigButtonShownEvent value)? setConfigButtonShown,
    required TResult orElse(),
  }) {
    if (setLocation != null) {
      return setLocation(this);
    }
    return orElse();
  }
}

abstract class SetLocationEvent implements ClockModelEvent {
  factory SetLocationEvent(String location) = _$SetLocationEvent;

  String get location => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SetLocationEventCopyWith<SetLocationEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetTemperatureEventCopyWith<$Res> {
  factory $SetTemperatureEventCopyWith(
          SetTemperatureEvent value, $Res Function(SetTemperatureEvent) then) =
      _$SetTemperatureEventCopyWithImpl<$Res>;
  $Res call({num temperature});
}

/// @nodoc
class _$SetTemperatureEventCopyWithImpl<$Res>
    extends _$ClockModelEventCopyWithImpl<$Res>
    implements $SetTemperatureEventCopyWith<$Res> {
  _$SetTemperatureEventCopyWithImpl(
      SetTemperatureEvent _value, $Res Function(SetTemperatureEvent) _then)
      : super(_value, (v) => _then(v as SetTemperatureEvent));

  @override
  SetTemperatureEvent get _value => super._value as SetTemperatureEvent;

  @override
  $Res call({
    Object? temperature = freezed,
  }) {
    return _then(SetTemperatureEvent(
      temperature == freezed
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc

class _$SetTemperatureEvent implements SetTemperatureEvent {
  _$SetTemperatureEvent(this.temperature);

  @override
  final num temperature;

  @override
  String toString() {
    return 'ClockModelEvent.setTemperature(temperature: $temperature)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SetTemperatureEvent &&
            (identical(other.temperature, temperature) ||
                const DeepCollectionEquality()
                    .equals(other.temperature, temperature)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(temperature);

  @JsonKey(ignore: true)
  @override
  $SetTemperatureEventCopyWith<SetTemperatureEvent> get copyWith =>
      _$SetTemperatureEventCopyWithImpl<SetTemperatureEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(String location) setLocation,
    required TResult Function(num temperature) setTemperature,
    required TResult Function(bool is24HourFormat) setIs24HourFormat,
    required TResult Function(WeatherCondition condition) setWeatherCondition,
    required TResult Function(TemperatureUnit unit) setTemperatureUnit,
    required TResult Function(ThemeMode themeMode) setThemeMode,
    required TResult Function(bool shown) setConfigButtonShown,
  }) {
    return setTemperature(temperature);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(String location)? setLocation,
    TResult Function(num temperature)? setTemperature,
    TResult Function(bool is24HourFormat)? setIs24HourFormat,
    TResult Function(WeatherCondition condition)? setWeatherCondition,
    TResult Function(TemperatureUnit unit)? setTemperatureUnit,
    TResult Function(ThemeMode themeMode)? setThemeMode,
    TResult Function(bool shown)? setConfigButtonShown,
  }) {
    return setTemperature?.call(temperature);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(String location)? setLocation,
    TResult Function(num temperature)? setTemperature,
    TResult Function(bool is24HourFormat)? setIs24HourFormat,
    TResult Function(WeatherCondition condition)? setWeatherCondition,
    TResult Function(TemperatureUnit unit)? setTemperatureUnit,
    TResult Function(ThemeMode themeMode)? setThemeMode,
    TResult Function(bool shown)? setConfigButtonShown,
    required TResult orElse(),
  }) {
    if (setTemperature != null) {
      return setTemperature(temperature);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitializeEvent value) initialize,
    required TResult Function(SetLocationEvent value) setLocation,
    required TResult Function(SetTemperatureEvent value) setTemperature,
    required TResult Function(SetIs24HourFormatEvent value) setIs24HourFormat,
    required TResult Function(SetWeatherConditionEvent value)
        setWeatherCondition,
    required TResult Function(SetTemperatureUnitEvent value) setTemperatureUnit,
    required TResult Function(SetThemeModeEvent value) setThemeMode,
    required TResult Function(SetConfigButtonShownEvent value)
        setConfigButtonShown,
  }) {
    return setTemperature(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitializeEvent value)? initialize,
    TResult Function(SetLocationEvent value)? setLocation,
    TResult Function(SetTemperatureEvent value)? setTemperature,
    TResult Function(SetIs24HourFormatEvent value)? setIs24HourFormat,
    TResult Function(SetWeatherConditionEvent value)? setWeatherCondition,
    TResult Function(SetTemperatureUnitEvent value)? setTemperatureUnit,
    TResult Function(SetThemeModeEvent value)? setThemeMode,
    TResult Function(SetConfigButtonShownEvent value)? setConfigButtonShown,
  }) {
    return setTemperature?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitializeEvent value)? initialize,
    TResult Function(SetLocationEvent value)? setLocation,
    TResult Function(SetTemperatureEvent value)? setTemperature,
    TResult Function(SetIs24HourFormatEvent value)? setIs24HourFormat,
    TResult Function(SetWeatherConditionEvent value)? setWeatherCondition,
    TResult Function(SetTemperatureUnitEvent value)? setTemperatureUnit,
    TResult Function(SetThemeModeEvent value)? setThemeMode,
    TResult Function(SetConfigButtonShownEvent value)? setConfigButtonShown,
    required TResult orElse(),
  }) {
    if (setTemperature != null) {
      return setTemperature(this);
    }
    return orElse();
  }
}

abstract class SetTemperatureEvent implements ClockModelEvent {
  factory SetTemperatureEvent(num temperature) = _$SetTemperatureEvent;

  num get temperature => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SetTemperatureEventCopyWith<SetTemperatureEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetIs24HourFormatEventCopyWith<$Res> {
  factory $SetIs24HourFormatEventCopyWith(SetIs24HourFormatEvent value,
          $Res Function(SetIs24HourFormatEvent) then) =
      _$SetIs24HourFormatEventCopyWithImpl<$Res>;
  $Res call({bool is24HourFormat});
}

/// @nodoc
class _$SetIs24HourFormatEventCopyWithImpl<$Res>
    extends _$ClockModelEventCopyWithImpl<$Res>
    implements $SetIs24HourFormatEventCopyWith<$Res> {
  _$SetIs24HourFormatEventCopyWithImpl(SetIs24HourFormatEvent _value,
      $Res Function(SetIs24HourFormatEvent) _then)
      : super(_value, (v) => _then(v as SetIs24HourFormatEvent));

  @override
  SetIs24HourFormatEvent get _value => super._value as SetIs24HourFormatEvent;

  @override
  $Res call({
    Object? is24HourFormat = freezed,
  }) {
    return _then(SetIs24HourFormatEvent(
      is24HourFormat == freezed
          ? _value.is24HourFormat
          : is24HourFormat // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SetIs24HourFormatEvent implements SetIs24HourFormatEvent {
  _$SetIs24HourFormatEvent(this.is24HourFormat);

  @override
  final bool is24HourFormat;

  @override
  String toString() {
    return 'ClockModelEvent.setIs24HourFormat(is24HourFormat: $is24HourFormat)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SetIs24HourFormatEvent &&
            (identical(other.is24HourFormat, is24HourFormat) ||
                const DeepCollectionEquality()
                    .equals(other.is24HourFormat, is24HourFormat)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(is24HourFormat);

  @JsonKey(ignore: true)
  @override
  $SetIs24HourFormatEventCopyWith<SetIs24HourFormatEvent> get copyWith =>
      _$SetIs24HourFormatEventCopyWithImpl<SetIs24HourFormatEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(String location) setLocation,
    required TResult Function(num temperature) setTemperature,
    required TResult Function(bool is24HourFormat) setIs24HourFormat,
    required TResult Function(WeatherCondition condition) setWeatherCondition,
    required TResult Function(TemperatureUnit unit) setTemperatureUnit,
    required TResult Function(ThemeMode themeMode) setThemeMode,
    required TResult Function(bool shown) setConfigButtonShown,
  }) {
    return setIs24HourFormat(is24HourFormat);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(String location)? setLocation,
    TResult Function(num temperature)? setTemperature,
    TResult Function(bool is24HourFormat)? setIs24HourFormat,
    TResult Function(WeatherCondition condition)? setWeatherCondition,
    TResult Function(TemperatureUnit unit)? setTemperatureUnit,
    TResult Function(ThemeMode themeMode)? setThemeMode,
    TResult Function(bool shown)? setConfigButtonShown,
  }) {
    return setIs24HourFormat?.call(is24HourFormat);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(String location)? setLocation,
    TResult Function(num temperature)? setTemperature,
    TResult Function(bool is24HourFormat)? setIs24HourFormat,
    TResult Function(WeatherCondition condition)? setWeatherCondition,
    TResult Function(TemperatureUnit unit)? setTemperatureUnit,
    TResult Function(ThemeMode themeMode)? setThemeMode,
    TResult Function(bool shown)? setConfigButtonShown,
    required TResult orElse(),
  }) {
    if (setIs24HourFormat != null) {
      return setIs24HourFormat(is24HourFormat);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitializeEvent value) initialize,
    required TResult Function(SetLocationEvent value) setLocation,
    required TResult Function(SetTemperatureEvent value) setTemperature,
    required TResult Function(SetIs24HourFormatEvent value) setIs24HourFormat,
    required TResult Function(SetWeatherConditionEvent value)
        setWeatherCondition,
    required TResult Function(SetTemperatureUnitEvent value) setTemperatureUnit,
    required TResult Function(SetThemeModeEvent value) setThemeMode,
    required TResult Function(SetConfigButtonShownEvent value)
        setConfigButtonShown,
  }) {
    return setIs24HourFormat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitializeEvent value)? initialize,
    TResult Function(SetLocationEvent value)? setLocation,
    TResult Function(SetTemperatureEvent value)? setTemperature,
    TResult Function(SetIs24HourFormatEvent value)? setIs24HourFormat,
    TResult Function(SetWeatherConditionEvent value)? setWeatherCondition,
    TResult Function(SetTemperatureUnitEvent value)? setTemperatureUnit,
    TResult Function(SetThemeModeEvent value)? setThemeMode,
    TResult Function(SetConfigButtonShownEvent value)? setConfigButtonShown,
  }) {
    return setIs24HourFormat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitializeEvent value)? initialize,
    TResult Function(SetLocationEvent value)? setLocation,
    TResult Function(SetTemperatureEvent value)? setTemperature,
    TResult Function(SetIs24HourFormatEvent value)? setIs24HourFormat,
    TResult Function(SetWeatherConditionEvent value)? setWeatherCondition,
    TResult Function(SetTemperatureUnitEvent value)? setTemperatureUnit,
    TResult Function(SetThemeModeEvent value)? setThemeMode,
    TResult Function(SetConfigButtonShownEvent value)? setConfigButtonShown,
    required TResult orElse(),
  }) {
    if (setIs24HourFormat != null) {
      return setIs24HourFormat(this);
    }
    return orElse();
  }
}

abstract class SetIs24HourFormatEvent implements ClockModelEvent {
  factory SetIs24HourFormatEvent(bool is24HourFormat) =
      _$SetIs24HourFormatEvent;

  bool get is24HourFormat => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SetIs24HourFormatEventCopyWith<SetIs24HourFormatEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetWeatherConditionEventCopyWith<$Res> {
  factory $SetWeatherConditionEventCopyWith(SetWeatherConditionEvent value,
          $Res Function(SetWeatherConditionEvent) then) =
      _$SetWeatherConditionEventCopyWithImpl<$Res>;
  $Res call({WeatherCondition condition});

  $WeatherConditionCopyWith<$Res> get condition;
}

/// @nodoc
class _$SetWeatherConditionEventCopyWithImpl<$Res>
    extends _$ClockModelEventCopyWithImpl<$Res>
    implements $SetWeatherConditionEventCopyWith<$Res> {
  _$SetWeatherConditionEventCopyWithImpl(SetWeatherConditionEvent _value,
      $Res Function(SetWeatherConditionEvent) _then)
      : super(_value, (v) => _then(v as SetWeatherConditionEvent));

  @override
  SetWeatherConditionEvent get _value =>
      super._value as SetWeatherConditionEvent;

  @override
  $Res call({
    Object? condition = freezed,
  }) {
    return _then(SetWeatherConditionEvent(
      condition == freezed
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as WeatherCondition,
    ));
  }

  @override
  $WeatherConditionCopyWith<$Res> get condition {
    return $WeatherConditionCopyWith<$Res>(_value.condition, (value) {
      return _then(_value.copyWith(condition: value));
    });
  }
}

/// @nodoc

class _$SetWeatherConditionEvent implements SetWeatherConditionEvent {
  _$SetWeatherConditionEvent(this.condition);

  @override
  final WeatherCondition condition;

  @override
  String toString() {
    return 'ClockModelEvent.setWeatherCondition(condition: $condition)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SetWeatherConditionEvent &&
            (identical(other.condition, condition) ||
                const DeepCollectionEquality()
                    .equals(other.condition, condition)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(condition);

  @JsonKey(ignore: true)
  @override
  $SetWeatherConditionEventCopyWith<SetWeatherConditionEvent> get copyWith =>
      _$SetWeatherConditionEventCopyWithImpl<SetWeatherConditionEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(String location) setLocation,
    required TResult Function(num temperature) setTemperature,
    required TResult Function(bool is24HourFormat) setIs24HourFormat,
    required TResult Function(WeatherCondition condition) setWeatherCondition,
    required TResult Function(TemperatureUnit unit) setTemperatureUnit,
    required TResult Function(ThemeMode themeMode) setThemeMode,
    required TResult Function(bool shown) setConfigButtonShown,
  }) {
    return setWeatherCondition(condition);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(String location)? setLocation,
    TResult Function(num temperature)? setTemperature,
    TResult Function(bool is24HourFormat)? setIs24HourFormat,
    TResult Function(WeatherCondition condition)? setWeatherCondition,
    TResult Function(TemperatureUnit unit)? setTemperatureUnit,
    TResult Function(ThemeMode themeMode)? setThemeMode,
    TResult Function(bool shown)? setConfigButtonShown,
  }) {
    return setWeatherCondition?.call(condition);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(String location)? setLocation,
    TResult Function(num temperature)? setTemperature,
    TResult Function(bool is24HourFormat)? setIs24HourFormat,
    TResult Function(WeatherCondition condition)? setWeatherCondition,
    TResult Function(TemperatureUnit unit)? setTemperatureUnit,
    TResult Function(ThemeMode themeMode)? setThemeMode,
    TResult Function(bool shown)? setConfigButtonShown,
    required TResult orElse(),
  }) {
    if (setWeatherCondition != null) {
      return setWeatherCondition(condition);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitializeEvent value) initialize,
    required TResult Function(SetLocationEvent value) setLocation,
    required TResult Function(SetTemperatureEvent value) setTemperature,
    required TResult Function(SetIs24HourFormatEvent value) setIs24HourFormat,
    required TResult Function(SetWeatherConditionEvent value)
        setWeatherCondition,
    required TResult Function(SetTemperatureUnitEvent value) setTemperatureUnit,
    required TResult Function(SetThemeModeEvent value) setThemeMode,
    required TResult Function(SetConfigButtonShownEvent value)
        setConfigButtonShown,
  }) {
    return setWeatherCondition(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitializeEvent value)? initialize,
    TResult Function(SetLocationEvent value)? setLocation,
    TResult Function(SetTemperatureEvent value)? setTemperature,
    TResult Function(SetIs24HourFormatEvent value)? setIs24HourFormat,
    TResult Function(SetWeatherConditionEvent value)? setWeatherCondition,
    TResult Function(SetTemperatureUnitEvent value)? setTemperatureUnit,
    TResult Function(SetThemeModeEvent value)? setThemeMode,
    TResult Function(SetConfigButtonShownEvent value)? setConfigButtonShown,
  }) {
    return setWeatherCondition?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitializeEvent value)? initialize,
    TResult Function(SetLocationEvent value)? setLocation,
    TResult Function(SetTemperatureEvent value)? setTemperature,
    TResult Function(SetIs24HourFormatEvent value)? setIs24HourFormat,
    TResult Function(SetWeatherConditionEvent value)? setWeatherCondition,
    TResult Function(SetTemperatureUnitEvent value)? setTemperatureUnit,
    TResult Function(SetThemeModeEvent value)? setThemeMode,
    TResult Function(SetConfigButtonShownEvent value)? setConfigButtonShown,
    required TResult orElse(),
  }) {
    if (setWeatherCondition != null) {
      return setWeatherCondition(this);
    }
    return orElse();
  }
}

abstract class SetWeatherConditionEvent implements ClockModelEvent {
  factory SetWeatherConditionEvent(WeatherCondition condition) =
      _$SetWeatherConditionEvent;

  WeatherCondition get condition => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SetWeatherConditionEventCopyWith<SetWeatherConditionEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetTemperatureUnitEventCopyWith<$Res> {
  factory $SetTemperatureUnitEventCopyWith(SetTemperatureUnitEvent value,
          $Res Function(SetTemperatureUnitEvent) then) =
      _$SetTemperatureUnitEventCopyWithImpl<$Res>;
  $Res call({TemperatureUnit unit});

  $TemperatureUnitCopyWith<$Res> get unit;
}

/// @nodoc
class _$SetTemperatureUnitEventCopyWithImpl<$Res>
    extends _$ClockModelEventCopyWithImpl<$Res>
    implements $SetTemperatureUnitEventCopyWith<$Res> {
  _$SetTemperatureUnitEventCopyWithImpl(SetTemperatureUnitEvent _value,
      $Res Function(SetTemperatureUnitEvent) _then)
      : super(_value, (v) => _then(v as SetTemperatureUnitEvent));

  @override
  SetTemperatureUnitEvent get _value => super._value as SetTemperatureUnitEvent;

  @override
  $Res call({
    Object? unit = freezed,
  }) {
    return _then(SetTemperatureUnitEvent(
      unit == freezed
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as TemperatureUnit,
    ));
  }

  @override
  $TemperatureUnitCopyWith<$Res> get unit {
    return $TemperatureUnitCopyWith<$Res>(_value.unit, (value) {
      return _then(_value.copyWith(unit: value));
    });
  }
}

/// @nodoc

class _$SetTemperatureUnitEvent implements SetTemperatureUnitEvent {
  _$SetTemperatureUnitEvent(this.unit);

  @override
  final TemperatureUnit unit;

  @override
  String toString() {
    return 'ClockModelEvent.setTemperatureUnit(unit: $unit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SetTemperatureUnitEvent &&
            (identical(other.unit, unit) ||
                const DeepCollectionEquality().equals(other.unit, unit)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(unit);

  @JsonKey(ignore: true)
  @override
  $SetTemperatureUnitEventCopyWith<SetTemperatureUnitEvent> get copyWith =>
      _$SetTemperatureUnitEventCopyWithImpl<SetTemperatureUnitEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(String location) setLocation,
    required TResult Function(num temperature) setTemperature,
    required TResult Function(bool is24HourFormat) setIs24HourFormat,
    required TResult Function(WeatherCondition condition) setWeatherCondition,
    required TResult Function(TemperatureUnit unit) setTemperatureUnit,
    required TResult Function(ThemeMode themeMode) setThemeMode,
    required TResult Function(bool shown) setConfigButtonShown,
  }) {
    return setTemperatureUnit(unit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(String location)? setLocation,
    TResult Function(num temperature)? setTemperature,
    TResult Function(bool is24HourFormat)? setIs24HourFormat,
    TResult Function(WeatherCondition condition)? setWeatherCondition,
    TResult Function(TemperatureUnit unit)? setTemperatureUnit,
    TResult Function(ThemeMode themeMode)? setThemeMode,
    TResult Function(bool shown)? setConfigButtonShown,
  }) {
    return setTemperatureUnit?.call(unit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(String location)? setLocation,
    TResult Function(num temperature)? setTemperature,
    TResult Function(bool is24HourFormat)? setIs24HourFormat,
    TResult Function(WeatherCondition condition)? setWeatherCondition,
    TResult Function(TemperatureUnit unit)? setTemperatureUnit,
    TResult Function(ThemeMode themeMode)? setThemeMode,
    TResult Function(bool shown)? setConfigButtonShown,
    required TResult orElse(),
  }) {
    if (setTemperatureUnit != null) {
      return setTemperatureUnit(unit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitializeEvent value) initialize,
    required TResult Function(SetLocationEvent value) setLocation,
    required TResult Function(SetTemperatureEvent value) setTemperature,
    required TResult Function(SetIs24HourFormatEvent value) setIs24HourFormat,
    required TResult Function(SetWeatherConditionEvent value)
        setWeatherCondition,
    required TResult Function(SetTemperatureUnitEvent value) setTemperatureUnit,
    required TResult Function(SetThemeModeEvent value) setThemeMode,
    required TResult Function(SetConfigButtonShownEvent value)
        setConfigButtonShown,
  }) {
    return setTemperatureUnit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitializeEvent value)? initialize,
    TResult Function(SetLocationEvent value)? setLocation,
    TResult Function(SetTemperatureEvent value)? setTemperature,
    TResult Function(SetIs24HourFormatEvent value)? setIs24HourFormat,
    TResult Function(SetWeatherConditionEvent value)? setWeatherCondition,
    TResult Function(SetTemperatureUnitEvent value)? setTemperatureUnit,
    TResult Function(SetThemeModeEvent value)? setThemeMode,
    TResult Function(SetConfigButtonShownEvent value)? setConfigButtonShown,
  }) {
    return setTemperatureUnit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitializeEvent value)? initialize,
    TResult Function(SetLocationEvent value)? setLocation,
    TResult Function(SetTemperatureEvent value)? setTemperature,
    TResult Function(SetIs24HourFormatEvent value)? setIs24HourFormat,
    TResult Function(SetWeatherConditionEvent value)? setWeatherCondition,
    TResult Function(SetTemperatureUnitEvent value)? setTemperatureUnit,
    TResult Function(SetThemeModeEvent value)? setThemeMode,
    TResult Function(SetConfigButtonShownEvent value)? setConfigButtonShown,
    required TResult orElse(),
  }) {
    if (setTemperatureUnit != null) {
      return setTemperatureUnit(this);
    }
    return orElse();
  }
}

abstract class SetTemperatureUnitEvent implements ClockModelEvent {
  factory SetTemperatureUnitEvent(TemperatureUnit unit) =
      _$SetTemperatureUnitEvent;

  TemperatureUnit get unit => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SetTemperatureUnitEventCopyWith<SetTemperatureUnitEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetThemeModeEventCopyWith<$Res> {
  factory $SetThemeModeEventCopyWith(
          SetThemeModeEvent value, $Res Function(SetThemeModeEvent) then) =
      _$SetThemeModeEventCopyWithImpl<$Res>;
  $Res call({ThemeMode themeMode});
}

/// @nodoc
class _$SetThemeModeEventCopyWithImpl<$Res>
    extends _$ClockModelEventCopyWithImpl<$Res>
    implements $SetThemeModeEventCopyWith<$Res> {
  _$SetThemeModeEventCopyWithImpl(
      SetThemeModeEvent _value, $Res Function(SetThemeModeEvent) _then)
      : super(_value, (v) => _then(v as SetThemeModeEvent));

  @override
  SetThemeModeEvent get _value => super._value as SetThemeModeEvent;

  @override
  $Res call({
    Object? themeMode = freezed,
  }) {
    return _then(SetThemeModeEvent(
      themeMode == freezed
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
    ));
  }
}

/// @nodoc

class _$SetThemeModeEvent implements SetThemeModeEvent {
  _$SetThemeModeEvent(this.themeMode);

  @override
  final ThemeMode themeMode;

  @override
  String toString() {
    return 'ClockModelEvent.setThemeMode(themeMode: $themeMode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SetThemeModeEvent &&
            (identical(other.themeMode, themeMode) ||
                const DeepCollectionEquality()
                    .equals(other.themeMode, themeMode)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(themeMode);

  @JsonKey(ignore: true)
  @override
  $SetThemeModeEventCopyWith<SetThemeModeEvent> get copyWith =>
      _$SetThemeModeEventCopyWithImpl<SetThemeModeEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(String location) setLocation,
    required TResult Function(num temperature) setTemperature,
    required TResult Function(bool is24HourFormat) setIs24HourFormat,
    required TResult Function(WeatherCondition condition) setWeatherCondition,
    required TResult Function(TemperatureUnit unit) setTemperatureUnit,
    required TResult Function(ThemeMode themeMode) setThemeMode,
    required TResult Function(bool shown) setConfigButtonShown,
  }) {
    return setThemeMode(themeMode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(String location)? setLocation,
    TResult Function(num temperature)? setTemperature,
    TResult Function(bool is24HourFormat)? setIs24HourFormat,
    TResult Function(WeatherCondition condition)? setWeatherCondition,
    TResult Function(TemperatureUnit unit)? setTemperatureUnit,
    TResult Function(ThemeMode themeMode)? setThemeMode,
    TResult Function(bool shown)? setConfigButtonShown,
  }) {
    return setThemeMode?.call(themeMode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(String location)? setLocation,
    TResult Function(num temperature)? setTemperature,
    TResult Function(bool is24HourFormat)? setIs24HourFormat,
    TResult Function(WeatherCondition condition)? setWeatherCondition,
    TResult Function(TemperatureUnit unit)? setTemperatureUnit,
    TResult Function(ThemeMode themeMode)? setThemeMode,
    TResult Function(bool shown)? setConfigButtonShown,
    required TResult orElse(),
  }) {
    if (setThemeMode != null) {
      return setThemeMode(themeMode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitializeEvent value) initialize,
    required TResult Function(SetLocationEvent value) setLocation,
    required TResult Function(SetTemperatureEvent value) setTemperature,
    required TResult Function(SetIs24HourFormatEvent value) setIs24HourFormat,
    required TResult Function(SetWeatherConditionEvent value)
        setWeatherCondition,
    required TResult Function(SetTemperatureUnitEvent value) setTemperatureUnit,
    required TResult Function(SetThemeModeEvent value) setThemeMode,
    required TResult Function(SetConfigButtonShownEvent value)
        setConfigButtonShown,
  }) {
    return setThemeMode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitializeEvent value)? initialize,
    TResult Function(SetLocationEvent value)? setLocation,
    TResult Function(SetTemperatureEvent value)? setTemperature,
    TResult Function(SetIs24HourFormatEvent value)? setIs24HourFormat,
    TResult Function(SetWeatherConditionEvent value)? setWeatherCondition,
    TResult Function(SetTemperatureUnitEvent value)? setTemperatureUnit,
    TResult Function(SetThemeModeEvent value)? setThemeMode,
    TResult Function(SetConfigButtonShownEvent value)? setConfigButtonShown,
  }) {
    return setThemeMode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitializeEvent value)? initialize,
    TResult Function(SetLocationEvent value)? setLocation,
    TResult Function(SetTemperatureEvent value)? setTemperature,
    TResult Function(SetIs24HourFormatEvent value)? setIs24HourFormat,
    TResult Function(SetWeatherConditionEvent value)? setWeatherCondition,
    TResult Function(SetTemperatureUnitEvent value)? setTemperatureUnit,
    TResult Function(SetThemeModeEvent value)? setThemeMode,
    TResult Function(SetConfigButtonShownEvent value)? setConfigButtonShown,
    required TResult orElse(),
  }) {
    if (setThemeMode != null) {
      return setThemeMode(this);
    }
    return orElse();
  }
}

abstract class SetThemeModeEvent implements ClockModelEvent {
  factory SetThemeModeEvent(ThemeMode themeMode) = _$SetThemeModeEvent;

  ThemeMode get themeMode => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SetThemeModeEventCopyWith<SetThemeModeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetConfigButtonShownEventCopyWith<$Res> {
  factory $SetConfigButtonShownEventCopyWith(SetConfigButtonShownEvent value,
          $Res Function(SetConfigButtonShownEvent) then) =
      _$SetConfigButtonShownEventCopyWithImpl<$Res>;
  $Res call({bool shown});
}

/// @nodoc
class _$SetConfigButtonShownEventCopyWithImpl<$Res>
    extends _$ClockModelEventCopyWithImpl<$Res>
    implements $SetConfigButtonShownEventCopyWith<$Res> {
  _$SetConfigButtonShownEventCopyWithImpl(SetConfigButtonShownEvent _value,
      $Res Function(SetConfigButtonShownEvent) _then)
      : super(_value, (v) => _then(v as SetConfigButtonShownEvent));

  @override
  SetConfigButtonShownEvent get _value =>
      super._value as SetConfigButtonShownEvent;

  @override
  $Res call({
    Object? shown = freezed,
  }) {
    return _then(SetConfigButtonShownEvent(
      shown == freezed
          ? _value.shown
          : shown // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SetConfigButtonShownEvent implements SetConfigButtonShownEvent {
  _$SetConfigButtonShownEvent(this.shown);

  @override
  final bool shown;

  @override
  String toString() {
    return 'ClockModelEvent.setConfigButtonShown(shown: $shown)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SetConfigButtonShownEvent &&
            (identical(other.shown, shown) ||
                const DeepCollectionEquality().equals(other.shown, shown)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(shown);

  @JsonKey(ignore: true)
  @override
  $SetConfigButtonShownEventCopyWith<SetConfigButtonShownEvent> get copyWith =>
      _$SetConfigButtonShownEventCopyWithImpl<SetConfigButtonShownEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(String location) setLocation,
    required TResult Function(num temperature) setTemperature,
    required TResult Function(bool is24HourFormat) setIs24HourFormat,
    required TResult Function(WeatherCondition condition) setWeatherCondition,
    required TResult Function(TemperatureUnit unit) setTemperatureUnit,
    required TResult Function(ThemeMode themeMode) setThemeMode,
    required TResult Function(bool shown) setConfigButtonShown,
  }) {
    return setConfigButtonShown(shown);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(String location)? setLocation,
    TResult Function(num temperature)? setTemperature,
    TResult Function(bool is24HourFormat)? setIs24HourFormat,
    TResult Function(WeatherCondition condition)? setWeatherCondition,
    TResult Function(TemperatureUnit unit)? setTemperatureUnit,
    TResult Function(ThemeMode themeMode)? setThemeMode,
    TResult Function(bool shown)? setConfigButtonShown,
  }) {
    return setConfigButtonShown?.call(shown);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(String location)? setLocation,
    TResult Function(num temperature)? setTemperature,
    TResult Function(bool is24HourFormat)? setIs24HourFormat,
    TResult Function(WeatherCondition condition)? setWeatherCondition,
    TResult Function(TemperatureUnit unit)? setTemperatureUnit,
    TResult Function(ThemeMode themeMode)? setThemeMode,
    TResult Function(bool shown)? setConfigButtonShown,
    required TResult orElse(),
  }) {
    if (setConfigButtonShown != null) {
      return setConfigButtonShown(shown);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitializeEvent value) initialize,
    required TResult Function(SetLocationEvent value) setLocation,
    required TResult Function(SetTemperatureEvent value) setTemperature,
    required TResult Function(SetIs24HourFormatEvent value) setIs24HourFormat,
    required TResult Function(SetWeatherConditionEvent value)
        setWeatherCondition,
    required TResult Function(SetTemperatureUnitEvent value) setTemperatureUnit,
    required TResult Function(SetThemeModeEvent value) setThemeMode,
    required TResult Function(SetConfigButtonShownEvent value)
        setConfigButtonShown,
  }) {
    return setConfigButtonShown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitializeEvent value)? initialize,
    TResult Function(SetLocationEvent value)? setLocation,
    TResult Function(SetTemperatureEvent value)? setTemperature,
    TResult Function(SetIs24HourFormatEvent value)? setIs24HourFormat,
    TResult Function(SetWeatherConditionEvent value)? setWeatherCondition,
    TResult Function(SetTemperatureUnitEvent value)? setTemperatureUnit,
    TResult Function(SetThemeModeEvent value)? setThemeMode,
    TResult Function(SetConfigButtonShownEvent value)? setConfigButtonShown,
  }) {
    return setConfigButtonShown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitializeEvent value)? initialize,
    TResult Function(SetLocationEvent value)? setLocation,
    TResult Function(SetTemperatureEvent value)? setTemperature,
    TResult Function(SetIs24HourFormatEvent value)? setIs24HourFormat,
    TResult Function(SetWeatherConditionEvent value)? setWeatherCondition,
    TResult Function(SetTemperatureUnitEvent value)? setTemperatureUnit,
    TResult Function(SetThemeModeEvent value)? setThemeMode,
    TResult Function(SetConfigButtonShownEvent value)? setConfigButtonShown,
    required TResult orElse(),
  }) {
    if (setConfigButtonShown != null) {
      return setConfigButtonShown(this);
    }
    return orElse();
  }
}

abstract class SetConfigButtonShownEvent implements ClockModelEvent {
  factory SetConfigButtonShownEvent(bool shown) = _$SetConfigButtonShownEvent;

  bool get shown => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SetConfigButtonShownEventCopyWith<SetConfigButtonShownEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ClockModelStateTearOff {
  const _$ClockModelStateTearOff();

  _ClockModelState call() {
    return const _ClockModelState();
  }

  LoadedStateDetail loaded(ClockModel model) {
    return LoadedStateDetail(
      model,
    );
  }
}

/// @nodoc
const $ClockModelState = _$ClockModelStateTearOff();

/// @nodoc
mixin _$ClockModelState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(ClockModel model) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(ClockModel model)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(ClockModel model)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ClockModelState value) $default, {
    required TResult Function(LoadedStateDetail value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_ClockModelState value)? $default, {
    TResult Function(LoadedStateDetail value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ClockModelState value)? $default, {
    TResult Function(LoadedStateDetail value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClockModelStateCopyWith<$Res> {
  factory $ClockModelStateCopyWith(
          ClockModelState value, $Res Function(ClockModelState) then) =
      _$ClockModelStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ClockModelStateCopyWithImpl<$Res>
    implements $ClockModelStateCopyWith<$Res> {
  _$ClockModelStateCopyWithImpl(this._value, this._then);

  final ClockModelState _value;
  // ignore: unused_field
  final $Res Function(ClockModelState) _then;
}

/// @nodoc
abstract class _$ClockModelStateCopyWith<$Res> {
  factory _$ClockModelStateCopyWith(
          _ClockModelState value, $Res Function(_ClockModelState) then) =
      __$ClockModelStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$ClockModelStateCopyWithImpl<$Res>
    extends _$ClockModelStateCopyWithImpl<$Res>
    implements _$ClockModelStateCopyWith<$Res> {
  __$ClockModelStateCopyWithImpl(
      _ClockModelState _value, $Res Function(_ClockModelState) _then)
      : super(_value, (v) => _then(v as _ClockModelState));

  @override
  _ClockModelState get _value => super._value as _ClockModelState;
}

/// @nodoc

class _$_ClockModelState implements _ClockModelState {
  const _$_ClockModelState();

  @override
  String toString() {
    return 'ClockModelState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ClockModelState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(ClockModel model) loaded,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(ClockModel model)? loaded,
  }) {
    return $default?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(ClockModel model)? loaded,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ClockModelState value) $default, {
    required TResult Function(LoadedStateDetail value) loaded,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_ClockModelState value)? $default, {
    TResult Function(LoadedStateDetail value)? loaded,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ClockModelState value)? $default, {
    TResult Function(LoadedStateDetail value)? loaded,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _ClockModelState implements ClockModelState {
  const factory _ClockModelState() = _$_ClockModelState;
}

/// @nodoc
abstract class $LoadedStateDetailCopyWith<$Res> {
  factory $LoadedStateDetailCopyWith(
          LoadedStateDetail value, $Res Function(LoadedStateDetail) then) =
      _$LoadedStateDetailCopyWithImpl<$Res>;
  $Res call({ClockModel model});

  $ClockModelCopyWith<$Res> get model;
}

/// @nodoc
class _$LoadedStateDetailCopyWithImpl<$Res>
    extends _$ClockModelStateCopyWithImpl<$Res>
    implements $LoadedStateDetailCopyWith<$Res> {
  _$LoadedStateDetailCopyWithImpl(
      LoadedStateDetail _value, $Res Function(LoadedStateDetail) _then)
      : super(_value, (v) => _then(v as LoadedStateDetail));

  @override
  LoadedStateDetail get _value => super._value as LoadedStateDetail;

  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(LoadedStateDetail(
      model == freezed
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as ClockModel,
    ));
  }

  @override
  $ClockModelCopyWith<$Res> get model {
    return $ClockModelCopyWith<$Res>(_value.model, (value) {
      return _then(_value.copyWith(model: value));
    });
  }
}

/// @nodoc

class _$LoadedStateDetail implements LoadedStateDetail {
  _$LoadedStateDetail(this.model);

  @override
  final ClockModel model;

  @override
  String toString() {
    return 'ClockModelState.loaded(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadedStateDetail &&
            (identical(other.model, model) ||
                const DeepCollectionEquality().equals(other.model, model)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(model);

  @JsonKey(ignore: true)
  @override
  $LoadedStateDetailCopyWith<LoadedStateDetail> get copyWith =>
      _$LoadedStateDetailCopyWithImpl<LoadedStateDetail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(ClockModel model) loaded,
  }) {
    return loaded(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(ClockModel model)? loaded,
  }) {
    return loaded?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(ClockModel model)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ClockModelState value) $default, {
    required TResult Function(LoadedStateDetail value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_ClockModelState value)? $default, {
    TResult Function(LoadedStateDetail value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ClockModelState value)? $default, {
    TResult Function(LoadedStateDetail value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class LoadedStateDetail implements ClockModelState {
  factory LoadedStateDetail(ClockModel model) = _$LoadedStateDetail;

  ClockModel get model => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoadedStateDetailCopyWith<LoadedStateDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

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

class _$Fahrenheit extends Fahrenheit {
  _$Fahrenheit() : super._();

  @override
  String toString() {
    return 'TemperatureUnit.fahrenheit()';
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

class _$Celsius extends Celsius {
  _$Celsius() : super._();

  @override
  String toString() {
    return 'TemperatureUnit.celsius()';
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

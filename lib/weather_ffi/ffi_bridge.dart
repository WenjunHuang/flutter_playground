import 'dart:ffi';
import 'dart:io';
import 'package:ffi/ffi.dart';

typedef TemperatureFunction = Double Function();
typedef TemperatureFunctionDart = double Function();
typedef ForecastFunction = Pointer<Utf8> Function();
typedef ForecastFunctionDart = Pointer<Utf8> Function();
typedef FreeForecastFunction = Function(Pointer<Utf8>);
typedef FreeForecastFunctionDart = Function(Pointer<Utf8>);

class ThreeDayForecast extends Struct {
  @Double()
  external double get today;

  external set today(double value);

  @Double()
  external double get tomorrow;

  external set tomorrow(double value);

  @Double()
  external double get day_after;

  external set day_after(double value);

  // 2
  @override
  String toString() {
    return 'Today : ${today.toStringAsFixed(1)}\n'
        'Tomorrow : ${tomorrow.toStringAsFixed(1)}\n'
        'Day After ${day_after.toStringAsFixed(1)}';
  }
}

typedef ThreeDayForecastFunction = ThreeDayForecast Function(Uint8 useCelsius);
typedef ThreeDayForecastFunctionDart = ThreeDayForecast Function(
    int useCelsius);

class FFIBridge {
  late final TemperatureFunctionDart _getTemperature;
  late final TemperatureFunctionDart _getTemperatureRust;
  late final ForecastFunctionDart _getForecast;
  late final ThreeDayForecastFunctionDart _getThreeDayForecast;


  late final ForecastFunctionDart _getForecastRust;
  late final FreeForecastFunctionDart _freeForecastRust;


  FFIBridge() {
    final dl = DynamicLibrary.open("native_lib");

    _getTemperature =
        dl.lookupFunction<TemperatureFunction, TemperatureFunctionDart>(
            'get_temperature');
    _getForecast = dl
        .lookupFunction<ForecastFunction, ForecastFunctionDart>("get_forecast");
    _getThreeDayForecast = dl.lookupFunction<ThreeDayForecastFunction,
        ThreeDayForecastFunctionDart>('get_three_day_forecast');

    final current = DynamicLibrary.open("native_lib_rust");
    _getTemperatureRust = current.lookupFunction<TemperatureFunction, TemperatureFunctionDart>(
        'get_temperature_rust');
    _getForecastRust = current.lookupFunction<ForecastFunction, ForecastFunctionDart>("get_forecast_rust");

  }

  double getTemperature() => _getTemperature();

  double getTemperatureRust()=>_getTemperatureRust();

  String getForecast() {
    final ptr = _getForecast();
    final forecast = ptr.toDartString();
    malloc.free(ptr);
    return forecast;
  }

  ThreeDayForecast getThreeDayForecast(bool useCelsius) {
    return _getThreeDayForecast(useCelsius ? 1 : 0);
  }
}

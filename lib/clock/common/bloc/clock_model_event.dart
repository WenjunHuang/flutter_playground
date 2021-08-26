part of 'clock_model_bloc.dart';

@freezed
class ClockModelEvent with _$ClockModelEvent {
  factory ClockModelEvent.initialize() = InitializeEvent;

  factory ClockModelEvent.setLocation(String location) = SetLocationEvent;

  factory ClockModelEvent.setTemperature(num temperature) = SetTemperatureEvent;

  factory ClockModelEvent.setIs24HourFormat(bool is24HourFormat) =
      SetIs24HourFormatEvent;

  factory ClockModelEvent.setWeatherCondition(WeatherCondition condition) =
      SetWeatherConditionEvent;

  factory ClockModelEvent.setTemperatureUnit(TemperatureUnit unit) =
      SetTemperatureUnitEvent;

  factory ClockModelEvent.setThemeMode(ThemeMode themeMode) = SetThemeModeEvent;

  factory ClockModelEvent.setConfigButtonShown(bool shown) =
      SetConfigButtonShownEvent;
}

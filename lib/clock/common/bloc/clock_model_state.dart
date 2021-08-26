part of 'clock_model_bloc.dart';

@freezed
class ClockModelState with _$ClockModelState{
  const factory ClockModelState() = _ClockModelState;
  factory ClockModelState.loaded(ClockModel model) = LoadedStateDetail;
}


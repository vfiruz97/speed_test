part of 'test_speed_bloc.dart';

@freezed
abstract class TestSpeedEvent with _$TestSpeedEvent {
  const factory TestSpeedEvent.started() = _Started;
  const factory TestSpeedEvent.cancled() = _Cancled;
  const factory TestSpeedEvent.succed({
    double downloadSpeed,
    String downloadUnit,
    double uploadSpeed,
    String uploadUnit,
  }) = _Succed;
}

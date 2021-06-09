part of 'test_speed_bloc.dart';

@freezed
abstract class TestSpeedState implements _$TestSpeedState {
  factory TestSpeedState({
    Speed speed,
  }) = _TestSpeedState;

  factory TestSpeedState.initial() => TestSpeedState(
        speed: Speed.empty(),
      );
}

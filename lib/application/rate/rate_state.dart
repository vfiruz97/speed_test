part of 'rate_bloc.dart';

@freezed
abstract class RateState with _$RateState {
  const factory RateState({
    @Default(false) bool showRateDialog,
  }) = _RateState;

  factory RateState.initial() => const RateState(showRateDialog: true);
}

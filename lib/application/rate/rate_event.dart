part of 'rate_bloc.dart';

@freezed
abstract class RateEvent with _$RateEvent {
  const factory RateEvent.showRateDialog() = _ShowRateDialog;
}
part of 'subscribe_notification_bloc.dart';

@freezed
abstract class SubscribeNotificationState with _$SubscribeNotificationState {
  const factory SubscribeNotificationState({
    @Default('') String title,
    @Default('') String describtion,
  }) = _SubscribeNotificationState;

  factory SubscribeNotificationState.initial() =>
      const SubscribeNotificationState(title: '', describtion: '');
}

part of 'notification_bloc.dart';

@freezed
abstract class NotificationState with _$NotificationState {
  const factory NotificationState({
    String message,
  }) = _NotificationState;

  factory NotificationState.initial() => const NotificationState(message: "");
}

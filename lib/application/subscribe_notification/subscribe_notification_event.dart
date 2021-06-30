part of 'subscribe_notification_bloc.dart';

@freezed
abstract class SubscribeNotificationEvent with _$SubscribeNotificationEvent {
  const factory SubscribeNotificationEvent.show(
      {String title, String describtion}) = _Show;
}

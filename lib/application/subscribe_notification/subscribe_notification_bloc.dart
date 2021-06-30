import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'subscribe_notification_event.dart';
part 'subscribe_notification_state.dart';
part 'subscribe_notification_bloc.freezed.dart';

class SubscribeNotificationBloc
    extends Bloc<SubscribeNotificationEvent, SubscribeNotificationState> {
  SubscribeNotificationBloc() : super(SubscribeNotificationState.initial());

  @override
  Stream<SubscribeNotificationState> mapEventToState(
    SubscribeNotificationEvent event,
  ) async* {
    yield* event.map(show: (e) async* {
      yield state.copyWith(
        title: e.title,
        describtion: e.describtion,
      );
    });
  }
}

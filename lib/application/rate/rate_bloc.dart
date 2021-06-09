import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'rate_event.dart';
part 'rate_state.dart';
part 'rate_bloc.freezed.dart';

class RateBloc extends Bloc<RateEvent, RateState> {
  RateBloc() : super(RateState.initial());

  @override
  Stream<RateState> mapEventToState(
    RateEvent event,
  ) async* {
    yield* event.map(showRateDialog: (e) async* {
      yield state.copyWith(showRateDialog: true != state.showRateDialog);
    });
  }
}

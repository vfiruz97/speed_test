import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:speed_test/application/page_navigation/pages_name.dart';

part 'page_navigation_event.dart';
part 'page_navigation_state.dart';

part 'page_navigation_bloc.freezed.dart';

class PageNavigationBloc
    extends Bloc<PageNavigationEvent, PageNavigationState> {
  PageNavigationBloc() : super(PageNavigationState.initial());

  @override
  Stream<PageNavigationState> mapEventToState(
    PageNavigationEvent event,
  ) async* {
    yield* event.map(changedCurrentPage: (e) async* {
      yield state.copyWith(currentPageName: e.newCurrentPage);
    });
  }
}

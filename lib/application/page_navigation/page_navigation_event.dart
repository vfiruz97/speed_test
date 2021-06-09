part of 'page_navigation_bloc.dart';

@freezed
abstract class PageNavigationEvent with _$PageNavigationEvent {
  const factory PageNavigationEvent.changedCurrentPage({
    @Default(PageName.startPage) PageName newCurrentPage,
    @Default(0) int newCurrentBottomNavigationIndex,
    @Default(0) dynamic data,
  }) = _PageNavigationEvent;
}

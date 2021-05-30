part of 'page_navigation_bloc.dart';

@freezed
abstract class PageNavigationEvent with _$PageNavigationEvent {
  const factory PageNavigationEvent.changedCurrentPage(
      {@Default(PageName.startPage) PageName newCurrentPage}) = _PageNavigationEvent;
}

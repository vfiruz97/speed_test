part of 'page_navigation_bloc.dart';

@freezed
abstract class PageNavigationState with _$PageNavigationState {
  const factory PageNavigationState({
    @Default(null) PageName currentPageName,
    @Default(1) int currentBottomNavigationIndex,
    @Default(0) dynamic data,
  }) = _PageNavigationState;

  factory PageNavigationState.initial() => const PageNavigationState(
        currentPageName: PageName.startPage,
        currentBottomNavigationIndex: 0,
        data: 0,
      );
}

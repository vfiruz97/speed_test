part of 'page_navigation_bloc.dart';

@freezed
abstract class PageNavigationState with _$PageNavigationState {
  const factory PageNavigationState({
    @Default(null) PageName currentPageName,
  }) = _PageNavigationState;

  factory PageNavigationState.initial() => const PageNavigationState(
        currentPageName: PageName.startPage,
      );
}

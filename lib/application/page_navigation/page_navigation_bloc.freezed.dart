// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'page_navigation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$PageNavigationEventTearOff {
  const _$PageNavigationEventTearOff();

// ignore: unused_element
  _PageNavigationEvent changedCurrentPage(
      {PageName newCurrentPage = PageName.startPage,
      int newCurrentBottomNavigationIndex = 0,
      dynamic data = 0}) {
    return _PageNavigationEvent(
      newCurrentPage: newCurrentPage,
      newCurrentBottomNavigationIndex: newCurrentBottomNavigationIndex,
      data: data,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PageNavigationEvent = _$PageNavigationEventTearOff();

/// @nodoc
mixin _$PageNavigationEvent {
  PageName get newCurrentPage;
  int get newCurrentBottomNavigationIndex;
  dynamic get data;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult changedCurrentPage(PageName newCurrentPage,
            int newCurrentBottomNavigationIndex, dynamic data),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult changedCurrentPage(PageName newCurrentPage,
        int newCurrentBottomNavigationIndex, dynamic data),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult changedCurrentPage(_PageNavigationEvent value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult changedCurrentPage(_PageNavigationEvent value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $PageNavigationEventCopyWith<PageNavigationEvent> get copyWith;
}

/// @nodoc
abstract class $PageNavigationEventCopyWith<$Res> {
  factory $PageNavigationEventCopyWith(
          PageNavigationEvent value, $Res Function(PageNavigationEvent) then) =
      _$PageNavigationEventCopyWithImpl<$Res>;
  $Res call(
      {PageName newCurrentPage,
      int newCurrentBottomNavigationIndex,
      dynamic data});
}

/// @nodoc
class _$PageNavigationEventCopyWithImpl<$Res>
    implements $PageNavigationEventCopyWith<$Res> {
  _$PageNavigationEventCopyWithImpl(this._value, this._then);

  final PageNavigationEvent _value;
  // ignore: unused_field
  final $Res Function(PageNavigationEvent) _then;

  @override
  $Res call({
    Object newCurrentPage = freezed,
    Object newCurrentBottomNavigationIndex = freezed,
    Object data = freezed,
  }) {
    return _then(_value.copyWith(
      newCurrentPage: newCurrentPage == freezed
          ? _value.newCurrentPage
          : newCurrentPage as PageName,
      newCurrentBottomNavigationIndex:
          newCurrentBottomNavigationIndex == freezed
              ? _value.newCurrentBottomNavigationIndex
              : newCurrentBottomNavigationIndex as int,
      data: data == freezed ? _value.data : data as dynamic,
    ));
  }
}

/// @nodoc
abstract class _$PageNavigationEventCopyWith<$Res>
    implements $PageNavigationEventCopyWith<$Res> {
  factory _$PageNavigationEventCopyWith(_PageNavigationEvent value,
          $Res Function(_PageNavigationEvent) then) =
      __$PageNavigationEventCopyWithImpl<$Res>;
  @override
  $Res call(
      {PageName newCurrentPage,
      int newCurrentBottomNavigationIndex,
      dynamic data});
}

/// @nodoc
class __$PageNavigationEventCopyWithImpl<$Res>
    extends _$PageNavigationEventCopyWithImpl<$Res>
    implements _$PageNavigationEventCopyWith<$Res> {
  __$PageNavigationEventCopyWithImpl(
      _PageNavigationEvent _value, $Res Function(_PageNavigationEvent) _then)
      : super(_value, (v) => _then(v as _PageNavigationEvent));

  @override
  _PageNavigationEvent get _value => super._value as _PageNavigationEvent;

  @override
  $Res call({
    Object newCurrentPage = freezed,
    Object newCurrentBottomNavigationIndex = freezed,
    Object data = freezed,
  }) {
    return _then(_PageNavigationEvent(
      newCurrentPage: newCurrentPage == freezed
          ? _value.newCurrentPage
          : newCurrentPage as PageName,
      newCurrentBottomNavigationIndex:
          newCurrentBottomNavigationIndex == freezed
              ? _value.newCurrentBottomNavigationIndex
              : newCurrentBottomNavigationIndex as int,
      data: data == freezed ? _value.data : data as dynamic,
    ));
  }
}

/// @nodoc
class _$_PageNavigationEvent implements _PageNavigationEvent {
  const _$_PageNavigationEvent(
      {this.newCurrentPage = PageName.startPage,
      this.newCurrentBottomNavigationIndex = 0,
      this.data = 0})
      : assert(newCurrentPage != null),
        assert(newCurrentBottomNavigationIndex != null),
        assert(data != null);

  @JsonKey(defaultValue: PageName.startPage)
  @override
  final PageName newCurrentPage;
  @JsonKey(defaultValue: 0)
  @override
  final int newCurrentBottomNavigationIndex;
  @JsonKey(defaultValue: 0)
  @override
  final dynamic data;

  @override
  String toString() {
    return 'PageNavigationEvent.changedCurrentPage(newCurrentPage: $newCurrentPage, newCurrentBottomNavigationIndex: $newCurrentBottomNavigationIndex, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PageNavigationEvent &&
            (identical(other.newCurrentPage, newCurrentPage) ||
                const DeepCollectionEquality()
                    .equals(other.newCurrentPage, newCurrentPage)) &&
            (identical(other.newCurrentBottomNavigationIndex,
                    newCurrentBottomNavigationIndex) ||
                const DeepCollectionEquality().equals(
                    other.newCurrentBottomNavigationIndex,
                    newCurrentBottomNavigationIndex)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(newCurrentPage) ^
      const DeepCollectionEquality().hash(newCurrentBottomNavigationIndex) ^
      const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$PageNavigationEventCopyWith<_PageNavigationEvent> get copyWith =>
      __$PageNavigationEventCopyWithImpl<_PageNavigationEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult changedCurrentPage(PageName newCurrentPage,
            int newCurrentBottomNavigationIndex, dynamic data),
  }) {
    assert(changedCurrentPage != null);
    return changedCurrentPage(
        newCurrentPage, newCurrentBottomNavigationIndex, data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult changedCurrentPage(PageName newCurrentPage,
        int newCurrentBottomNavigationIndex, dynamic data),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changedCurrentPage != null) {
      return changedCurrentPage(
          newCurrentPage, newCurrentBottomNavigationIndex, data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult changedCurrentPage(_PageNavigationEvent value),
  }) {
    assert(changedCurrentPage != null);
    return changedCurrentPage(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult changedCurrentPage(_PageNavigationEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changedCurrentPage != null) {
      return changedCurrentPage(this);
    }
    return orElse();
  }
}

abstract class _PageNavigationEvent implements PageNavigationEvent {
  const factory _PageNavigationEvent(
      {PageName newCurrentPage,
      int newCurrentBottomNavigationIndex,
      dynamic data}) = _$_PageNavigationEvent;

  @override
  PageName get newCurrentPage;
  @override
  int get newCurrentBottomNavigationIndex;
  @override
  dynamic get data;
  @override
  @JsonKey(ignore: true)
  _$PageNavigationEventCopyWith<_PageNavigationEvent> get copyWith;
}

/// @nodoc
class _$PageNavigationStateTearOff {
  const _$PageNavigationStateTearOff();

// ignore: unused_element
  _PageNavigationState call(
      {PageName currentPageName = null,
      int currentBottomNavigationIndex = 1,
      dynamic data = 0}) {
    return _PageNavigationState(
      currentPageName: currentPageName,
      currentBottomNavigationIndex: currentBottomNavigationIndex,
      data: data,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PageNavigationState = _$PageNavigationStateTearOff();

/// @nodoc
mixin _$PageNavigationState {
  PageName get currentPageName;
  int get currentBottomNavigationIndex;
  dynamic get data;

  @JsonKey(ignore: true)
  $PageNavigationStateCopyWith<PageNavigationState> get copyWith;
}

/// @nodoc
abstract class $PageNavigationStateCopyWith<$Res> {
  factory $PageNavigationStateCopyWith(
          PageNavigationState value, $Res Function(PageNavigationState) then) =
      _$PageNavigationStateCopyWithImpl<$Res>;
  $Res call(
      {PageName currentPageName,
      int currentBottomNavigationIndex,
      dynamic data});
}

/// @nodoc
class _$PageNavigationStateCopyWithImpl<$Res>
    implements $PageNavigationStateCopyWith<$Res> {
  _$PageNavigationStateCopyWithImpl(this._value, this._then);

  final PageNavigationState _value;
  // ignore: unused_field
  final $Res Function(PageNavigationState) _then;

  @override
  $Res call({
    Object currentPageName = freezed,
    Object currentBottomNavigationIndex = freezed,
    Object data = freezed,
  }) {
    return _then(_value.copyWith(
      currentPageName: currentPageName == freezed
          ? _value.currentPageName
          : currentPageName as PageName,
      currentBottomNavigationIndex: currentBottomNavigationIndex == freezed
          ? _value.currentBottomNavigationIndex
          : currentBottomNavigationIndex as int,
      data: data == freezed ? _value.data : data as dynamic,
    ));
  }
}

/// @nodoc
abstract class _$PageNavigationStateCopyWith<$Res>
    implements $PageNavigationStateCopyWith<$Res> {
  factory _$PageNavigationStateCopyWith(_PageNavigationState value,
          $Res Function(_PageNavigationState) then) =
      __$PageNavigationStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {PageName currentPageName,
      int currentBottomNavigationIndex,
      dynamic data});
}

/// @nodoc
class __$PageNavigationStateCopyWithImpl<$Res>
    extends _$PageNavigationStateCopyWithImpl<$Res>
    implements _$PageNavigationStateCopyWith<$Res> {
  __$PageNavigationStateCopyWithImpl(
      _PageNavigationState _value, $Res Function(_PageNavigationState) _then)
      : super(_value, (v) => _then(v as _PageNavigationState));

  @override
  _PageNavigationState get _value => super._value as _PageNavigationState;

  @override
  $Res call({
    Object currentPageName = freezed,
    Object currentBottomNavigationIndex = freezed,
    Object data = freezed,
  }) {
    return _then(_PageNavigationState(
      currentPageName: currentPageName == freezed
          ? _value.currentPageName
          : currentPageName as PageName,
      currentBottomNavigationIndex: currentBottomNavigationIndex == freezed
          ? _value.currentBottomNavigationIndex
          : currentBottomNavigationIndex as int,
      data: data == freezed ? _value.data : data as dynamic,
    ));
  }
}

/// @nodoc
class _$_PageNavigationState implements _PageNavigationState {
  const _$_PageNavigationState(
      {this.currentPageName = null,
      this.currentBottomNavigationIndex = 1,
      this.data = 0})
      : assert(currentPageName != null),
        assert(currentBottomNavigationIndex != null),
        assert(data != null);

  @JsonKey(defaultValue: null)
  @override
  final PageName currentPageName;
  @JsonKey(defaultValue: 1)
  @override
  final int currentBottomNavigationIndex;
  @JsonKey(defaultValue: 0)
  @override
  final dynamic data;

  @override
  String toString() {
    return 'PageNavigationState(currentPageName: $currentPageName, currentBottomNavigationIndex: $currentBottomNavigationIndex, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PageNavigationState &&
            (identical(other.currentPageName, currentPageName) ||
                const DeepCollectionEquality()
                    .equals(other.currentPageName, currentPageName)) &&
            (identical(other.currentBottomNavigationIndex,
                    currentBottomNavigationIndex) ||
                const DeepCollectionEquality().equals(
                    other.currentBottomNavigationIndex,
                    currentBottomNavigationIndex)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(currentPageName) ^
      const DeepCollectionEquality().hash(currentBottomNavigationIndex) ^
      const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$PageNavigationStateCopyWith<_PageNavigationState> get copyWith =>
      __$PageNavigationStateCopyWithImpl<_PageNavigationState>(
          this, _$identity);
}

abstract class _PageNavigationState implements PageNavigationState {
  const factory _PageNavigationState(
      {PageName currentPageName,
      int currentBottomNavigationIndex,
      dynamic data}) = _$_PageNavigationState;

  @override
  PageName get currentPageName;
  @override
  int get currentBottomNavigationIndex;
  @override
  dynamic get data;
  @override
  @JsonKey(ignore: true)
  _$PageNavigationStateCopyWith<_PageNavigationState> get copyWith;
}

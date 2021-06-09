// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'rate_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$RateEventTearOff {
  const _$RateEventTearOff();

// ignore: unused_element
  _ShowRateDialog showRateDialog() {
    return const _ShowRateDialog();
  }
}

/// @nodoc
// ignore: unused_element
const $RateEvent = _$RateEventTearOff();

/// @nodoc
mixin _$RateEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult showRateDialog(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult showRateDialog(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult showRateDialog(_ShowRateDialog value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult showRateDialog(_ShowRateDialog value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $RateEventCopyWith<$Res> {
  factory $RateEventCopyWith(RateEvent value, $Res Function(RateEvent) then) =
      _$RateEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$RateEventCopyWithImpl<$Res> implements $RateEventCopyWith<$Res> {
  _$RateEventCopyWithImpl(this._value, this._then);

  final RateEvent _value;
  // ignore: unused_field
  final $Res Function(RateEvent) _then;
}

/// @nodoc
abstract class _$ShowRateDialogCopyWith<$Res> {
  factory _$ShowRateDialogCopyWith(
          _ShowRateDialog value, $Res Function(_ShowRateDialog) then) =
      __$ShowRateDialogCopyWithImpl<$Res>;
}

/// @nodoc
class __$ShowRateDialogCopyWithImpl<$Res> extends _$RateEventCopyWithImpl<$Res>
    implements _$ShowRateDialogCopyWith<$Res> {
  __$ShowRateDialogCopyWithImpl(
      _ShowRateDialog _value, $Res Function(_ShowRateDialog) _then)
      : super(_value, (v) => _then(v as _ShowRateDialog));

  @override
  _ShowRateDialog get _value => super._value as _ShowRateDialog;
}

/// @nodoc
class _$_ShowRateDialog implements _ShowRateDialog {
  const _$_ShowRateDialog();

  @override
  String toString() {
    return 'RateEvent.showRateDialog()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ShowRateDialog);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult showRateDialog(),
  }) {
    assert(showRateDialog != null);
    return showRateDialog();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult showRateDialog(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (showRateDialog != null) {
      return showRateDialog();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult showRateDialog(_ShowRateDialog value),
  }) {
    assert(showRateDialog != null);
    return showRateDialog(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult showRateDialog(_ShowRateDialog value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (showRateDialog != null) {
      return showRateDialog(this);
    }
    return orElse();
  }
}

abstract class _ShowRateDialog implements RateEvent {
  const factory _ShowRateDialog() = _$_ShowRateDialog;
}

/// @nodoc
class _$RateStateTearOff {
  const _$RateStateTearOff();

// ignore: unused_element
  _RateState call({bool showRateDialog = false}) {
    return _RateState(
      showRateDialog: showRateDialog,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $RateState = _$RateStateTearOff();

/// @nodoc
mixin _$RateState {
  bool get showRateDialog;

  @JsonKey(ignore: true)
  $RateStateCopyWith<RateState> get copyWith;
}

/// @nodoc
abstract class $RateStateCopyWith<$Res> {
  factory $RateStateCopyWith(RateState value, $Res Function(RateState) then) =
      _$RateStateCopyWithImpl<$Res>;
  $Res call({bool showRateDialog});
}

/// @nodoc
class _$RateStateCopyWithImpl<$Res> implements $RateStateCopyWith<$Res> {
  _$RateStateCopyWithImpl(this._value, this._then);

  final RateState _value;
  // ignore: unused_field
  final $Res Function(RateState) _then;

  @override
  $Res call({
    Object showRateDialog = freezed,
  }) {
    return _then(_value.copyWith(
      showRateDialog: showRateDialog == freezed
          ? _value.showRateDialog
          : showRateDialog as bool,
    ));
  }
}

/// @nodoc
abstract class _$RateStateCopyWith<$Res> implements $RateStateCopyWith<$Res> {
  factory _$RateStateCopyWith(
          _RateState value, $Res Function(_RateState) then) =
      __$RateStateCopyWithImpl<$Res>;
  @override
  $Res call({bool showRateDialog});
}

/// @nodoc
class __$RateStateCopyWithImpl<$Res> extends _$RateStateCopyWithImpl<$Res>
    implements _$RateStateCopyWith<$Res> {
  __$RateStateCopyWithImpl(_RateState _value, $Res Function(_RateState) _then)
      : super(_value, (v) => _then(v as _RateState));

  @override
  _RateState get _value => super._value as _RateState;

  @override
  $Res call({
    Object showRateDialog = freezed,
  }) {
    return _then(_RateState(
      showRateDialog: showRateDialog == freezed
          ? _value.showRateDialog
          : showRateDialog as bool,
    ));
  }
}

/// @nodoc
class _$_RateState implements _RateState {
  const _$_RateState({this.showRateDialog = false})
      : assert(showRateDialog != null);

  @JsonKey(defaultValue: false)
  @override
  final bool showRateDialog;

  @override
  String toString() {
    return 'RateState(showRateDialog: $showRateDialog)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RateState &&
            (identical(other.showRateDialog, showRateDialog) ||
                const DeepCollectionEquality()
                    .equals(other.showRateDialog, showRateDialog)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(showRateDialog);

  @JsonKey(ignore: true)
  @override
  _$RateStateCopyWith<_RateState> get copyWith =>
      __$RateStateCopyWithImpl<_RateState>(this, _$identity);
}

abstract class _RateState implements RateState {
  const factory _RateState({bool showRateDialog}) = _$_RateState;

  @override
  bool get showRateDialog;
  @override
  @JsonKey(ignore: true)
  _$RateStateCopyWith<_RateState> get copyWith;
}

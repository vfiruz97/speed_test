// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'subscribe_notification_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SubscribeNotificationEventTearOff {
  const _$SubscribeNotificationEventTearOff();

// ignore: unused_element
  _Show show({String title, String describtion}) {
    return _Show(
      title: title,
      describtion: describtion,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SubscribeNotificationEvent = _$SubscribeNotificationEventTearOff();

/// @nodoc
mixin _$SubscribeNotificationEvent {
  String get title;
  String get describtion;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult show(String title, String describtion),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult show(String title, String describtion),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult show(_Show value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult show(_Show value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $SubscribeNotificationEventCopyWith<SubscribeNotificationEvent> get copyWith;
}

/// @nodoc
abstract class $SubscribeNotificationEventCopyWith<$Res> {
  factory $SubscribeNotificationEventCopyWith(SubscribeNotificationEvent value,
          $Res Function(SubscribeNotificationEvent) then) =
      _$SubscribeNotificationEventCopyWithImpl<$Res>;
  $Res call({String title, String describtion});
}

/// @nodoc
class _$SubscribeNotificationEventCopyWithImpl<$Res>
    implements $SubscribeNotificationEventCopyWith<$Res> {
  _$SubscribeNotificationEventCopyWithImpl(this._value, this._then);

  final SubscribeNotificationEvent _value;
  // ignore: unused_field
  final $Res Function(SubscribeNotificationEvent) _then;

  @override
  $Res call({
    Object title = freezed,
    Object describtion = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed ? _value.title : title as String,
      describtion:
          describtion == freezed ? _value.describtion : describtion as String,
    ));
  }
}

/// @nodoc
abstract class _$ShowCopyWith<$Res>
    implements $SubscribeNotificationEventCopyWith<$Res> {
  factory _$ShowCopyWith(_Show value, $Res Function(_Show) then) =
      __$ShowCopyWithImpl<$Res>;
  @override
  $Res call({String title, String describtion});
}

/// @nodoc
class __$ShowCopyWithImpl<$Res>
    extends _$SubscribeNotificationEventCopyWithImpl<$Res>
    implements _$ShowCopyWith<$Res> {
  __$ShowCopyWithImpl(_Show _value, $Res Function(_Show) _then)
      : super(_value, (v) => _then(v as _Show));

  @override
  _Show get _value => super._value as _Show;

  @override
  $Res call({
    Object title = freezed,
    Object describtion = freezed,
  }) {
    return _then(_Show(
      title: title == freezed ? _value.title : title as String,
      describtion:
          describtion == freezed ? _value.describtion : describtion as String,
    ));
  }
}

/// @nodoc
class _$_Show implements _Show {
  const _$_Show({this.title, this.describtion});

  @override
  final String title;
  @override
  final String describtion;

  @override
  String toString() {
    return 'SubscribeNotificationEvent.show(title: $title, describtion: $describtion)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Show &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.describtion, describtion) ||
                const DeepCollectionEquality()
                    .equals(other.describtion, describtion)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(describtion);

  @JsonKey(ignore: true)
  @override
  _$ShowCopyWith<_Show> get copyWith =>
      __$ShowCopyWithImpl<_Show>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult show(String title, String describtion),
  }) {
    assert(show != null);
    return show(title, describtion);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult show(String title, String describtion),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (show != null) {
      return show(title, describtion);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult show(_Show value),
  }) {
    assert(show != null);
    return show(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult show(_Show value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (show != null) {
      return show(this);
    }
    return orElse();
  }
}

abstract class _Show implements SubscribeNotificationEvent {
  const factory _Show({String title, String describtion}) = _$_Show;

  @override
  String get title;
  @override
  String get describtion;
  @override
  @JsonKey(ignore: true)
  _$ShowCopyWith<_Show> get copyWith;
}

/// @nodoc
class _$SubscribeNotificationStateTearOff {
  const _$SubscribeNotificationStateTearOff();

// ignore: unused_element
  _SubscribeNotificationState call(
      {String title = '', String describtion = ''}) {
    return _SubscribeNotificationState(
      title: title,
      describtion: describtion,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SubscribeNotificationState = _$SubscribeNotificationStateTearOff();

/// @nodoc
mixin _$SubscribeNotificationState {
  String get title;
  String get describtion;

  @JsonKey(ignore: true)
  $SubscribeNotificationStateCopyWith<SubscribeNotificationState> get copyWith;
}

/// @nodoc
abstract class $SubscribeNotificationStateCopyWith<$Res> {
  factory $SubscribeNotificationStateCopyWith(SubscribeNotificationState value,
          $Res Function(SubscribeNotificationState) then) =
      _$SubscribeNotificationStateCopyWithImpl<$Res>;
  $Res call({String title, String describtion});
}

/// @nodoc
class _$SubscribeNotificationStateCopyWithImpl<$Res>
    implements $SubscribeNotificationStateCopyWith<$Res> {
  _$SubscribeNotificationStateCopyWithImpl(this._value, this._then);

  final SubscribeNotificationState _value;
  // ignore: unused_field
  final $Res Function(SubscribeNotificationState) _then;

  @override
  $Res call({
    Object title = freezed,
    Object describtion = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed ? _value.title : title as String,
      describtion:
          describtion == freezed ? _value.describtion : describtion as String,
    ));
  }
}

/// @nodoc
abstract class _$SubscribeNotificationStateCopyWith<$Res>
    implements $SubscribeNotificationStateCopyWith<$Res> {
  factory _$SubscribeNotificationStateCopyWith(
          _SubscribeNotificationState value,
          $Res Function(_SubscribeNotificationState) then) =
      __$SubscribeNotificationStateCopyWithImpl<$Res>;
  @override
  $Res call({String title, String describtion});
}

/// @nodoc
class __$SubscribeNotificationStateCopyWithImpl<$Res>
    extends _$SubscribeNotificationStateCopyWithImpl<$Res>
    implements _$SubscribeNotificationStateCopyWith<$Res> {
  __$SubscribeNotificationStateCopyWithImpl(_SubscribeNotificationState _value,
      $Res Function(_SubscribeNotificationState) _then)
      : super(_value, (v) => _then(v as _SubscribeNotificationState));

  @override
  _SubscribeNotificationState get _value =>
      super._value as _SubscribeNotificationState;

  @override
  $Res call({
    Object title = freezed,
    Object describtion = freezed,
  }) {
    return _then(_SubscribeNotificationState(
      title: title == freezed ? _value.title : title as String,
      describtion:
          describtion == freezed ? _value.describtion : describtion as String,
    ));
  }
}

/// @nodoc
class _$_SubscribeNotificationState implements _SubscribeNotificationState {
  const _$_SubscribeNotificationState({this.title = '', this.describtion = ''})
      : assert(title != null),
        assert(describtion != null);

  @JsonKey(defaultValue: '')
  @override
  final String title;
  @JsonKey(defaultValue: '')
  @override
  final String describtion;

  @override
  String toString() {
    return 'SubscribeNotificationState(title: $title, describtion: $describtion)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SubscribeNotificationState &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.describtion, describtion) ||
                const DeepCollectionEquality()
                    .equals(other.describtion, describtion)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(describtion);

  @JsonKey(ignore: true)
  @override
  _$SubscribeNotificationStateCopyWith<_SubscribeNotificationState>
      get copyWith => __$SubscribeNotificationStateCopyWithImpl<
          _SubscribeNotificationState>(this, _$identity);
}

abstract class _SubscribeNotificationState
    implements SubscribeNotificationState {
  const factory _SubscribeNotificationState(
      {String title, String describtion}) = _$_SubscribeNotificationState;

  @override
  String get title;
  @override
  String get describtion;
  @override
  @JsonKey(ignore: true)
  _$SubscribeNotificationStateCopyWith<_SubscribeNotificationState>
      get copyWith;
}

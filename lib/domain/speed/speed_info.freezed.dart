// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'speed_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SpeedInfoTearOff {
  const _$SpeedInfoTearOff();

// ignore: unused_element
  _SpeedInfo call({@required SpeedValue value, @required SpeedUnit unit}) {
    return _SpeedInfo(
      value: value,
      unit: unit,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SpeedInfo = _$SpeedInfoTearOff();

/// @nodoc
mixin _$SpeedInfo {
  SpeedValue get value;
  SpeedUnit get unit;

  @JsonKey(ignore: true)
  $SpeedInfoCopyWith<SpeedInfo> get copyWith;
}

/// @nodoc
abstract class $SpeedInfoCopyWith<$Res> {
  factory $SpeedInfoCopyWith(SpeedInfo value, $Res Function(SpeedInfo) then) =
      _$SpeedInfoCopyWithImpl<$Res>;
  $Res call({SpeedValue value, SpeedUnit unit});
}

/// @nodoc
class _$SpeedInfoCopyWithImpl<$Res> implements $SpeedInfoCopyWith<$Res> {
  _$SpeedInfoCopyWithImpl(this._value, this._then);

  final SpeedInfo _value;
  // ignore: unused_field
  final $Res Function(SpeedInfo) _then;

  @override
  $Res call({
    Object value = freezed,
    Object unit = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed ? _value.value : value as SpeedValue,
      unit: unit == freezed ? _value.unit : unit as SpeedUnit,
    ));
  }
}

/// @nodoc
abstract class _$SpeedInfoCopyWith<$Res> implements $SpeedInfoCopyWith<$Res> {
  factory _$SpeedInfoCopyWith(
          _SpeedInfo value, $Res Function(_SpeedInfo) then) =
      __$SpeedInfoCopyWithImpl<$Res>;
  @override
  $Res call({SpeedValue value, SpeedUnit unit});
}

/// @nodoc
class __$SpeedInfoCopyWithImpl<$Res> extends _$SpeedInfoCopyWithImpl<$Res>
    implements _$SpeedInfoCopyWith<$Res> {
  __$SpeedInfoCopyWithImpl(_SpeedInfo _value, $Res Function(_SpeedInfo) _then)
      : super(_value, (v) => _then(v as _SpeedInfo));

  @override
  _SpeedInfo get _value => super._value as _SpeedInfo;

  @override
  $Res call({
    Object value = freezed,
    Object unit = freezed,
  }) {
    return _then(_SpeedInfo(
      value: value == freezed ? _value.value : value as SpeedValue,
      unit: unit == freezed ? _value.unit : unit as SpeedUnit,
    ));
  }
}

/// @nodoc
class _$_SpeedInfo implements _SpeedInfo {
  const _$_SpeedInfo({@required this.value, @required this.unit})
      : assert(value != null),
        assert(unit != null);

  @override
  final SpeedValue value;
  @override
  final SpeedUnit unit;

  @override
  String toString() {
    return 'SpeedInfo(value: $value, unit: $unit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SpeedInfo &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)) &&
            (identical(other.unit, unit) ||
                const DeepCollectionEquality().equals(other.unit, unit)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(value) ^
      const DeepCollectionEquality().hash(unit);

  @JsonKey(ignore: true)
  @override
  _$SpeedInfoCopyWith<_SpeedInfo> get copyWith =>
      __$SpeedInfoCopyWithImpl<_SpeedInfo>(this, _$identity);
}

abstract class _SpeedInfo implements SpeedInfo {
  const factory _SpeedInfo(
      {@required SpeedValue value, @required SpeedUnit unit}) = _$_SpeedInfo;

  @override
  SpeedValue get value;
  @override
  SpeedUnit get unit;
  @override
  @JsonKey(ignore: true)
  _$SpeedInfoCopyWith<_SpeedInfo> get copyWith;
}

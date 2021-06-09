// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'test_speed_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$TestSpeedEventTearOff {
  const _$TestSpeedEventTearOff();

// ignore: unused_element
  _Started started() {
    return const _Started();
  }

// ignore: unused_element
  _Cancled cancled() {
    return const _Cancled();
  }

// ignore: unused_element
  _Succed succed(
      {double downloadSpeed,
      String downloadUnit,
      double uploadSpeed,
      String uploadUnit}) {
    return _Succed(
      downloadSpeed: downloadSpeed,
      downloadUnit: downloadUnit,
      uploadSpeed: uploadSpeed,
      uploadUnit: uploadUnit,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $TestSpeedEvent = _$TestSpeedEventTearOff();

/// @nodoc
mixin _$TestSpeedEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
    @required TResult cancled(),
    @required
        TResult succed(double downloadSpeed, String downloadUnit,
            double uploadSpeed, String uploadUnit),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult cancled(),
    TResult succed(double downloadSpeed, String downloadUnit,
        double uploadSpeed, String uploadUnit),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult cancled(_Cancled value),
    @required TResult succed(_Succed value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult cancled(_Cancled value),
    TResult succed(_Succed value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $TestSpeedEventCopyWith<$Res> {
  factory $TestSpeedEventCopyWith(
          TestSpeedEvent value, $Res Function(TestSpeedEvent) then) =
      _$TestSpeedEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$TestSpeedEventCopyWithImpl<$Res>
    implements $TestSpeedEventCopyWith<$Res> {
  _$TestSpeedEventCopyWithImpl(this._value, this._then);

  final TestSpeedEvent _value;
  // ignore: unused_field
  final $Res Function(TestSpeedEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$TestSpeedEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;
}

/// @nodoc
class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'TestSpeedEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
    @required TResult cancled(),
    @required
        TResult succed(double downloadSpeed, String downloadUnit,
            double uploadSpeed, String uploadUnit),
  }) {
    assert(started != null);
    assert(cancled != null);
    assert(succed != null);
    return started();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult cancled(),
    TResult succed(double downloadSpeed, String downloadUnit,
        double uploadSpeed, String uploadUnit),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult cancled(_Cancled value),
    @required TResult succed(_Succed value),
  }) {
    assert(started != null);
    assert(cancled != null);
    assert(succed != null);
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult cancled(_Cancled value),
    TResult succed(_Succed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements TestSpeedEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$CancledCopyWith<$Res> {
  factory _$CancledCopyWith(_Cancled value, $Res Function(_Cancled) then) =
      __$CancledCopyWithImpl<$Res>;
}

/// @nodoc
class __$CancledCopyWithImpl<$Res> extends _$TestSpeedEventCopyWithImpl<$Res>
    implements _$CancledCopyWith<$Res> {
  __$CancledCopyWithImpl(_Cancled _value, $Res Function(_Cancled) _then)
      : super(_value, (v) => _then(v as _Cancled));

  @override
  _Cancled get _value => super._value as _Cancled;
}

/// @nodoc
class _$_Cancled implements _Cancled {
  const _$_Cancled();

  @override
  String toString() {
    return 'TestSpeedEvent.cancled()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Cancled);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
    @required TResult cancled(),
    @required
        TResult succed(double downloadSpeed, String downloadUnit,
            double uploadSpeed, String uploadUnit),
  }) {
    assert(started != null);
    assert(cancled != null);
    assert(succed != null);
    return cancled();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult cancled(),
    TResult succed(double downloadSpeed, String downloadUnit,
        double uploadSpeed, String uploadUnit),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (cancled != null) {
      return cancled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult cancled(_Cancled value),
    @required TResult succed(_Succed value),
  }) {
    assert(started != null);
    assert(cancled != null);
    assert(succed != null);
    return cancled(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult cancled(_Cancled value),
    TResult succed(_Succed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (cancled != null) {
      return cancled(this);
    }
    return orElse();
  }
}

abstract class _Cancled implements TestSpeedEvent {
  const factory _Cancled() = _$_Cancled;
}

/// @nodoc
abstract class _$SuccedCopyWith<$Res> {
  factory _$SuccedCopyWith(_Succed value, $Res Function(_Succed) then) =
      __$SuccedCopyWithImpl<$Res>;
  $Res call(
      {double downloadSpeed,
      String downloadUnit,
      double uploadSpeed,
      String uploadUnit});
}

/// @nodoc
class __$SuccedCopyWithImpl<$Res> extends _$TestSpeedEventCopyWithImpl<$Res>
    implements _$SuccedCopyWith<$Res> {
  __$SuccedCopyWithImpl(_Succed _value, $Res Function(_Succed) _then)
      : super(_value, (v) => _then(v as _Succed));

  @override
  _Succed get _value => super._value as _Succed;

  @override
  $Res call({
    Object downloadSpeed = freezed,
    Object downloadUnit = freezed,
    Object uploadSpeed = freezed,
    Object uploadUnit = freezed,
  }) {
    return _then(_Succed(
      downloadSpeed: downloadSpeed == freezed
          ? _value.downloadSpeed
          : downloadSpeed as double,
      downloadUnit: downloadUnit == freezed
          ? _value.downloadUnit
          : downloadUnit as String,
      uploadSpeed:
          uploadSpeed == freezed ? _value.uploadSpeed : uploadSpeed as double,
      uploadUnit:
          uploadUnit == freezed ? _value.uploadUnit : uploadUnit as String,
    ));
  }
}

/// @nodoc
class _$_Succed implements _Succed {
  const _$_Succed(
      {this.downloadSpeed,
      this.downloadUnit,
      this.uploadSpeed,
      this.uploadUnit});

  @override
  final double downloadSpeed;
  @override
  final String downloadUnit;
  @override
  final double uploadSpeed;
  @override
  final String uploadUnit;

  @override
  String toString() {
    return 'TestSpeedEvent.succed(downloadSpeed: $downloadSpeed, downloadUnit: $downloadUnit, uploadSpeed: $uploadSpeed, uploadUnit: $uploadUnit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Succed &&
            (identical(other.downloadSpeed, downloadSpeed) ||
                const DeepCollectionEquality()
                    .equals(other.downloadSpeed, downloadSpeed)) &&
            (identical(other.downloadUnit, downloadUnit) ||
                const DeepCollectionEquality()
                    .equals(other.downloadUnit, downloadUnit)) &&
            (identical(other.uploadSpeed, uploadSpeed) ||
                const DeepCollectionEquality()
                    .equals(other.uploadSpeed, uploadSpeed)) &&
            (identical(other.uploadUnit, uploadUnit) ||
                const DeepCollectionEquality()
                    .equals(other.uploadUnit, uploadUnit)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(downloadSpeed) ^
      const DeepCollectionEquality().hash(downloadUnit) ^
      const DeepCollectionEquality().hash(uploadSpeed) ^
      const DeepCollectionEquality().hash(uploadUnit);

  @JsonKey(ignore: true)
  @override
  _$SuccedCopyWith<_Succed> get copyWith =>
      __$SuccedCopyWithImpl<_Succed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
    @required TResult cancled(),
    @required
        TResult succed(double downloadSpeed, String downloadUnit,
            double uploadSpeed, String uploadUnit),
  }) {
    assert(started != null);
    assert(cancled != null);
    assert(succed != null);
    return succed(downloadSpeed, downloadUnit, uploadSpeed, uploadUnit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult cancled(),
    TResult succed(double downloadSpeed, String downloadUnit,
        double uploadSpeed, String uploadUnit),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (succed != null) {
      return succed(downloadSpeed, downloadUnit, uploadSpeed, uploadUnit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult cancled(_Cancled value),
    @required TResult succed(_Succed value),
  }) {
    assert(started != null);
    assert(cancled != null);
    assert(succed != null);
    return succed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult cancled(_Cancled value),
    TResult succed(_Succed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (succed != null) {
      return succed(this);
    }
    return orElse();
  }
}

abstract class _Succed implements TestSpeedEvent {
  const factory _Succed(
      {double downloadSpeed,
      String downloadUnit,
      double uploadSpeed,
      String uploadUnit}) = _$_Succed;

  double get downloadSpeed;
  String get downloadUnit;
  double get uploadSpeed;
  String get uploadUnit;
  @JsonKey(ignore: true)
  _$SuccedCopyWith<_Succed> get copyWith;
}

/// @nodoc
class _$TestSpeedStateTearOff {
  const _$TestSpeedStateTearOff();

// ignore: unused_element
  _TestSpeedState call({Speed speed}) {
    return _TestSpeedState(
      speed: speed,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $TestSpeedState = _$TestSpeedStateTearOff();

/// @nodoc
mixin _$TestSpeedState {
  Speed get speed;

  @JsonKey(ignore: true)
  $TestSpeedStateCopyWith<TestSpeedState> get copyWith;
}

/// @nodoc
abstract class $TestSpeedStateCopyWith<$Res> {
  factory $TestSpeedStateCopyWith(
          TestSpeedState value, $Res Function(TestSpeedState) then) =
      _$TestSpeedStateCopyWithImpl<$Res>;
  $Res call({Speed speed});

  $SpeedCopyWith<$Res> get speed;
}

/// @nodoc
class _$TestSpeedStateCopyWithImpl<$Res>
    implements $TestSpeedStateCopyWith<$Res> {
  _$TestSpeedStateCopyWithImpl(this._value, this._then);

  final TestSpeedState _value;
  // ignore: unused_field
  final $Res Function(TestSpeedState) _then;

  @override
  $Res call({
    Object speed = freezed,
  }) {
    return _then(_value.copyWith(
      speed: speed == freezed ? _value.speed : speed as Speed,
    ));
  }

  @override
  $SpeedCopyWith<$Res> get speed {
    if (_value.speed == null) {
      return null;
    }
    return $SpeedCopyWith<$Res>(_value.speed, (value) {
      return _then(_value.copyWith(speed: value));
    });
  }
}

/// @nodoc
abstract class _$TestSpeedStateCopyWith<$Res>
    implements $TestSpeedStateCopyWith<$Res> {
  factory _$TestSpeedStateCopyWith(
          _TestSpeedState value, $Res Function(_TestSpeedState) then) =
      __$TestSpeedStateCopyWithImpl<$Res>;
  @override
  $Res call({Speed speed});

  @override
  $SpeedCopyWith<$Res> get speed;
}

/// @nodoc
class __$TestSpeedStateCopyWithImpl<$Res>
    extends _$TestSpeedStateCopyWithImpl<$Res>
    implements _$TestSpeedStateCopyWith<$Res> {
  __$TestSpeedStateCopyWithImpl(
      _TestSpeedState _value, $Res Function(_TestSpeedState) _then)
      : super(_value, (v) => _then(v as _TestSpeedState));

  @override
  _TestSpeedState get _value => super._value as _TestSpeedState;

  @override
  $Res call({
    Object speed = freezed,
  }) {
    return _then(_TestSpeedState(
      speed: speed == freezed ? _value.speed : speed as Speed,
    ));
  }
}

/// @nodoc
class _$_TestSpeedState implements _TestSpeedState {
  _$_TestSpeedState({this.speed});

  @override
  final Speed speed;

  @override
  String toString() {
    return 'TestSpeedState(speed: $speed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TestSpeedState &&
            (identical(other.speed, speed) ||
                const DeepCollectionEquality().equals(other.speed, speed)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(speed);

  @JsonKey(ignore: true)
  @override
  _$TestSpeedStateCopyWith<_TestSpeedState> get copyWith =>
      __$TestSpeedStateCopyWithImpl<_TestSpeedState>(this, _$identity);
}

abstract class _TestSpeedState implements TestSpeedState {
  factory _TestSpeedState({Speed speed}) = _$_TestSpeedState;

  @override
  Speed get speed;
  @override
  @JsonKey(ignore: true)
  _$TestSpeedStateCopyWith<_TestSpeedState> get copyWith;
}

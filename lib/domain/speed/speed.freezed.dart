// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'speed.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SpeedTearOff {
  const _$SpeedTearOff();

// ignore: unused_element
  _Speed call(
      {@required UniqueId id,
      @required SpeedInfo downloadSpeed,
      @required SpeedInfo uploadSpeed,
      @required TestDateTime dateTime,
      @required WifiInfo wifiInfo,
      @required DeviceName deviceName}) {
    return _Speed(
      id: id,
      downloadSpeed: downloadSpeed,
      uploadSpeed: uploadSpeed,
      dateTime: dateTime,
      wifiInfo: wifiInfo,
      deviceName: deviceName,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Speed = _$SpeedTearOff();

/// @nodoc
mixin _$Speed {
  UniqueId get id;
  SpeedInfo get downloadSpeed;
  SpeedInfo get uploadSpeed;
  TestDateTime get dateTime;
  WifiInfo get wifiInfo;
  DeviceName get deviceName;

  @JsonKey(ignore: true)
  $SpeedCopyWith<Speed> get copyWith;
}

/// @nodoc
abstract class $SpeedCopyWith<$Res> {
  factory $SpeedCopyWith(Speed value, $Res Function(Speed) then) =
      _$SpeedCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      SpeedInfo downloadSpeed,
      SpeedInfo uploadSpeed,
      TestDateTime dateTime,
      WifiInfo wifiInfo,
      DeviceName deviceName});

  $SpeedInfoCopyWith<$Res> get downloadSpeed;
  $SpeedInfoCopyWith<$Res> get uploadSpeed;
  $WifiInfoCopyWith<$Res> get wifiInfo;
}

/// @nodoc
class _$SpeedCopyWithImpl<$Res> implements $SpeedCopyWith<$Res> {
  _$SpeedCopyWithImpl(this._value, this._then);

  final Speed _value;
  // ignore: unused_field
  final $Res Function(Speed) _then;

  @override
  $Res call({
    Object id = freezed,
    Object downloadSpeed = freezed,
    Object uploadSpeed = freezed,
    Object dateTime = freezed,
    Object wifiInfo = freezed,
    Object deviceName = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      downloadSpeed: downloadSpeed == freezed
          ? _value.downloadSpeed
          : downloadSpeed as SpeedInfo,
      uploadSpeed: uploadSpeed == freezed
          ? _value.uploadSpeed
          : uploadSpeed as SpeedInfo,
      dateTime:
          dateTime == freezed ? _value.dateTime : dateTime as TestDateTime,
      wifiInfo: wifiInfo == freezed ? _value.wifiInfo : wifiInfo as WifiInfo,
      deviceName:
          deviceName == freezed ? _value.deviceName : deviceName as DeviceName,
    ));
  }

  @override
  $SpeedInfoCopyWith<$Res> get downloadSpeed {
    if (_value.downloadSpeed == null) {
      return null;
    }
    return $SpeedInfoCopyWith<$Res>(_value.downloadSpeed, (value) {
      return _then(_value.copyWith(downloadSpeed: value));
    });
  }

  @override
  $SpeedInfoCopyWith<$Res> get uploadSpeed {
    if (_value.uploadSpeed == null) {
      return null;
    }
    return $SpeedInfoCopyWith<$Res>(_value.uploadSpeed, (value) {
      return _then(_value.copyWith(uploadSpeed: value));
    });
  }

  @override
  $WifiInfoCopyWith<$Res> get wifiInfo {
    if (_value.wifiInfo == null) {
      return null;
    }
    return $WifiInfoCopyWith<$Res>(_value.wifiInfo, (value) {
      return _then(_value.copyWith(wifiInfo: value));
    });
  }
}

/// @nodoc
abstract class _$SpeedCopyWith<$Res> implements $SpeedCopyWith<$Res> {
  factory _$SpeedCopyWith(_Speed value, $Res Function(_Speed) then) =
      __$SpeedCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      SpeedInfo downloadSpeed,
      SpeedInfo uploadSpeed,
      TestDateTime dateTime,
      WifiInfo wifiInfo,
      DeviceName deviceName});

  @override
  $SpeedInfoCopyWith<$Res> get downloadSpeed;
  @override
  $SpeedInfoCopyWith<$Res> get uploadSpeed;
  @override
  $WifiInfoCopyWith<$Res> get wifiInfo;
}

/// @nodoc
class __$SpeedCopyWithImpl<$Res> extends _$SpeedCopyWithImpl<$Res>
    implements _$SpeedCopyWith<$Res> {
  __$SpeedCopyWithImpl(_Speed _value, $Res Function(_Speed) _then)
      : super(_value, (v) => _then(v as _Speed));

  @override
  _Speed get _value => super._value as _Speed;

  @override
  $Res call({
    Object id = freezed,
    Object downloadSpeed = freezed,
    Object uploadSpeed = freezed,
    Object dateTime = freezed,
    Object wifiInfo = freezed,
    Object deviceName = freezed,
  }) {
    return _then(_Speed(
      id: id == freezed ? _value.id : id as UniqueId,
      downloadSpeed: downloadSpeed == freezed
          ? _value.downloadSpeed
          : downloadSpeed as SpeedInfo,
      uploadSpeed: uploadSpeed == freezed
          ? _value.uploadSpeed
          : uploadSpeed as SpeedInfo,
      dateTime:
          dateTime == freezed ? _value.dateTime : dateTime as TestDateTime,
      wifiInfo: wifiInfo == freezed ? _value.wifiInfo : wifiInfo as WifiInfo,
      deviceName:
          deviceName == freezed ? _value.deviceName : deviceName as DeviceName,
    ));
  }
}

/// @nodoc
class _$_Speed extends _Speed {
  const _$_Speed(
      {@required this.id,
      @required this.downloadSpeed,
      @required this.uploadSpeed,
      @required this.dateTime,
      @required this.wifiInfo,
      @required this.deviceName})
      : assert(id != null),
        assert(downloadSpeed != null),
        assert(uploadSpeed != null),
        assert(dateTime != null),
        assert(wifiInfo != null),
        assert(deviceName != null),
        super._();

  @override
  final UniqueId id;
  @override
  final SpeedInfo downloadSpeed;
  @override
  final SpeedInfo uploadSpeed;
  @override
  final TestDateTime dateTime;
  @override
  final WifiInfo wifiInfo;
  @override
  final DeviceName deviceName;

  @override
  String toString() {
    return 'Speed(id: $id, downloadSpeed: $downloadSpeed, uploadSpeed: $uploadSpeed, dateTime: $dateTime, wifiInfo: $wifiInfo, deviceName: $deviceName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Speed &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.downloadSpeed, downloadSpeed) ||
                const DeepCollectionEquality()
                    .equals(other.downloadSpeed, downloadSpeed)) &&
            (identical(other.uploadSpeed, uploadSpeed) ||
                const DeepCollectionEquality()
                    .equals(other.uploadSpeed, uploadSpeed)) &&
            (identical(other.dateTime, dateTime) ||
                const DeepCollectionEquality()
                    .equals(other.dateTime, dateTime)) &&
            (identical(other.wifiInfo, wifiInfo) ||
                const DeepCollectionEquality()
                    .equals(other.wifiInfo, wifiInfo)) &&
            (identical(other.deviceName, deviceName) ||
                const DeepCollectionEquality()
                    .equals(other.deviceName, deviceName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(downloadSpeed) ^
      const DeepCollectionEquality().hash(uploadSpeed) ^
      const DeepCollectionEquality().hash(dateTime) ^
      const DeepCollectionEquality().hash(wifiInfo) ^
      const DeepCollectionEquality().hash(deviceName);

  @JsonKey(ignore: true)
  @override
  _$SpeedCopyWith<_Speed> get copyWith =>
      __$SpeedCopyWithImpl<_Speed>(this, _$identity);
}

abstract class _Speed extends Speed {
  const _Speed._() : super._();
  const factory _Speed(
      {@required UniqueId id,
      @required SpeedInfo downloadSpeed,
      @required SpeedInfo uploadSpeed,
      @required TestDateTime dateTime,
      @required WifiInfo wifiInfo,
      @required DeviceName deviceName}) = _$_Speed;

  @override
  UniqueId get id;
  @override
  SpeedInfo get downloadSpeed;
  @override
  SpeedInfo get uploadSpeed;
  @override
  TestDateTime get dateTime;
  @override
  WifiInfo get wifiInfo;
  @override
  DeviceName get deviceName;
  @override
  @JsonKey(ignore: true)
  _$SpeedCopyWith<_Speed> get copyWith;
}

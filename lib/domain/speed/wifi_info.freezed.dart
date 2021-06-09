// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'wifi_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$WifiInfoTearOff {
  const _$WifiInfoTearOff();

// ignore: unused_element
  _WifiInfo call(
      {@required WifiName wifiName,
      @required IpAddress ipAddress,
      @required ServerName serverName}) {
    return _WifiInfo(
      wifiName: wifiName,
      ipAddress: ipAddress,
      serverName: serverName,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $WifiInfo = _$WifiInfoTearOff();

/// @nodoc
mixin _$WifiInfo {
  WifiName get wifiName;
  IpAddress get ipAddress;
  ServerName get serverName;

  @JsonKey(ignore: true)
  $WifiInfoCopyWith<WifiInfo> get copyWith;
}

/// @nodoc
abstract class $WifiInfoCopyWith<$Res> {
  factory $WifiInfoCopyWith(WifiInfo value, $Res Function(WifiInfo) then) =
      _$WifiInfoCopyWithImpl<$Res>;
  $Res call({WifiName wifiName, IpAddress ipAddress, ServerName serverName});
}

/// @nodoc
class _$WifiInfoCopyWithImpl<$Res> implements $WifiInfoCopyWith<$Res> {
  _$WifiInfoCopyWithImpl(this._value, this._then);

  final WifiInfo _value;
  // ignore: unused_field
  final $Res Function(WifiInfo) _then;

  @override
  $Res call({
    Object wifiName = freezed,
    Object ipAddress = freezed,
    Object serverName = freezed,
  }) {
    return _then(_value.copyWith(
      wifiName: wifiName == freezed ? _value.wifiName : wifiName as WifiName,
      ipAddress:
          ipAddress == freezed ? _value.ipAddress : ipAddress as IpAddress,
      serverName:
          serverName == freezed ? _value.serverName : serverName as ServerName,
    ));
  }
}

/// @nodoc
abstract class _$WifiInfoCopyWith<$Res> implements $WifiInfoCopyWith<$Res> {
  factory _$WifiInfoCopyWith(_WifiInfo value, $Res Function(_WifiInfo) then) =
      __$WifiInfoCopyWithImpl<$Res>;
  @override
  $Res call({WifiName wifiName, IpAddress ipAddress, ServerName serverName});
}

/// @nodoc
class __$WifiInfoCopyWithImpl<$Res> extends _$WifiInfoCopyWithImpl<$Res>
    implements _$WifiInfoCopyWith<$Res> {
  __$WifiInfoCopyWithImpl(_WifiInfo _value, $Res Function(_WifiInfo) _then)
      : super(_value, (v) => _then(v as _WifiInfo));

  @override
  _WifiInfo get _value => super._value as _WifiInfo;

  @override
  $Res call({
    Object wifiName = freezed,
    Object ipAddress = freezed,
    Object serverName = freezed,
  }) {
    return _then(_WifiInfo(
      wifiName: wifiName == freezed ? _value.wifiName : wifiName as WifiName,
      ipAddress:
          ipAddress == freezed ? _value.ipAddress : ipAddress as IpAddress,
      serverName:
          serverName == freezed ? _value.serverName : serverName as ServerName,
    ));
  }
}

/// @nodoc
class _$_WifiInfo implements _WifiInfo {
  const _$_WifiInfo(
      {@required this.wifiName,
      @required this.ipAddress,
      @required this.serverName})
      : assert(wifiName != null),
        assert(ipAddress != null),
        assert(serverName != null);

  @override
  final WifiName wifiName;
  @override
  final IpAddress ipAddress;
  @override
  final ServerName serverName;

  @override
  String toString() {
    return 'WifiInfo(wifiName: $wifiName, ipAddress: $ipAddress, serverName: $serverName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WifiInfo &&
            (identical(other.wifiName, wifiName) ||
                const DeepCollectionEquality()
                    .equals(other.wifiName, wifiName)) &&
            (identical(other.ipAddress, ipAddress) ||
                const DeepCollectionEquality()
                    .equals(other.ipAddress, ipAddress)) &&
            (identical(other.serverName, serverName) ||
                const DeepCollectionEquality()
                    .equals(other.serverName, serverName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(wifiName) ^
      const DeepCollectionEquality().hash(ipAddress) ^
      const DeepCollectionEquality().hash(serverName);

  @JsonKey(ignore: true)
  @override
  _$WifiInfoCopyWith<_WifiInfo> get copyWith =>
      __$WifiInfoCopyWithImpl<_WifiInfo>(this, _$identity);
}

abstract class _WifiInfo implements WifiInfo {
  const factory _WifiInfo(
      {@required WifiName wifiName,
      @required IpAddress ipAddress,
      @required ServerName serverName}) = _$_WifiInfo;

  @override
  WifiName get wifiName;
  @override
  IpAddress get ipAddress;
  @override
  ServerName get serverName;
  @override
  @JsonKey(ignore: true)
  _$WifiInfoCopyWith<_WifiInfo> get copyWith;
}

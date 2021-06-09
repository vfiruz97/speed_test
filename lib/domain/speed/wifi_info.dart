import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:speed_test/domain/speed/value_objects.dart';

part 'wifi_info.freezed.dart';

@freezed
abstract class WifiInfo with _$WifiInfo {
  const factory WifiInfo({
    @required WifiName wifiName,
    @required IpAddress ipAddress,
    @required ServerName serverName,
  }) = _WifiInfo;

  factory WifiInfo.empty() => WifiInfo(
        wifiName: WifiName(''),
        ipAddress: IpAddress(''),
        serverName: ServerName(''),
      );
}

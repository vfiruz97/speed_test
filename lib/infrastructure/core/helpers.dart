import 'dart:io' show Platform;

import 'package:device_info_plus/device_info_plus.dart';
import 'package:network_info_plus/network_info_plus.dart';

Future<String> getDeviceName() async {
  final DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();

  switch (Platform.operatingSystem) {
    case "android":
      final AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
      return androidInfo.model;
      break;
    case "ios":
      final IosDeviceInfo iosInfo = await deviceInfo.iosInfo;
      return iosInfo.utsname.machine;
      break;
    default:
      return "UNKNOWN";
  }
}

Future<String> getWifiName() async {
  final wifiName = await NetworkInfo().getWifiName();
  return wifiName ?? "UNKNOWN";
}

Future<String> getIpAddress() async {
  final wifiIP = await NetworkInfo().getWifiIP();
  return wifiIP ?? "UNKNOWN";
}

Future<String> getServerName() async {
  final wifiBSSID = await NetworkInfo().getWifiBSSID();
  return wifiBSSID ?? "UNKNOWN";
}

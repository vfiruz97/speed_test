import 'package:speed_test/domain/core/value_objects.dart';
import 'package:speed_test/domain/speed/speed.dart';
import 'package:speed_test/domain/speed/speed_info.dart';
import 'package:speed_test/domain/speed/value_objects.dart';
import 'package:speed_test/domain/speed/wifi_info.dart';

class SpeedDao {
  final String id;
  final String downloadSpeed;
  final String downloadUnit;
  final String uploadSpeed;
  final String uploadUnit;
  final String dataTime;
  final String wifiName;
  final String ipAddress;
  final String serverName;
  final String deviceName;

  SpeedDao({
    this.id,
    this.downloadSpeed,
    this.downloadUnit,
    this.uploadSpeed,
    this.uploadUnit,
    this.dataTime,
    this.wifiName,
    this.ipAddress,
    this.serverName,
    this.deviceName,
  });

  factory SpeedDao.fromJson(Map<String, dynamic> json) => SpeedDao(
        id: json['id'].toString(),
        downloadSpeed: json['downloadSpeed'].toString(),
        downloadUnit: json['downloadUnit'].toString(),
        uploadSpeed: json['uploadSpeed'].toString(),
        uploadUnit: json['uploadUnit'].toString(),
        dataTime: json['dataTime'].toString(),
        wifiName: json['wifiName'].toString(),
        ipAddress: json['ipAddress'].toString(),
        serverName: json['serverName'].toString(),
        deviceName: json['deviceName'].toString(),
      );

  Map<String, String> toJson() => {
        'id': id,
        'downloadSpeed': downloadSpeed,
        'downloadUnit': downloadUnit,
        'uploadSpeed': uploadSpeed,
        'uploadUnit': uploadUnit,
        'dataTime': dataTime,
        'wifiName': wifiName,
        'ipAddress': ipAddress,
        'serverName': serverName,
        'deviceName': deviceName,
      };

  factory SpeedDao.fromDomain(Speed speed) => SpeedDao(
        id: speed.id.getOrCrash(),
        downloadSpeed: speed.downloadSpeed.value.getOrCrash().toString(),
        downloadUnit: speed.downloadSpeed.unit.getOrCrash(),
        uploadSpeed: speed.uploadSpeed.value.getOrCrash().toString(),
        uploadUnit: speed.uploadSpeed.unit.getOrCrash(),
        dataTime: speed.dateTime.getOrCrash().toString(),
        wifiName: speed.wifiInfo.wifiName.getOrCrash(),
        ipAddress: speed.wifiInfo.ipAddress.getOrCrash(),
        serverName: speed.wifiInfo.serverName.getOrCrash(),
        deviceName: speed.deviceName.getOrCrash(),
      );

  Speed toDomain() => Speed(
        id: UniqueId(id),
        downloadSpeed: SpeedInfo(
          value: SpeedValue(double.parse(downloadSpeed)),
          unit: SpeedUnit(downloadUnit),
        ),
        uploadSpeed: SpeedInfo(
          value: SpeedValue(double.parse(uploadSpeed)),
          unit: SpeedUnit(uploadUnit),
        ),
        dateTime: TestDateTime(dataTime),
        wifiInfo: WifiInfo(
          wifiName: WifiName(wifiName),
          ipAddress: IpAddress(ipAddress),
          serverName: ServerName(serverName),
        ),
        deviceName: DeviceName(deviceName),
      );
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:speed_test/domain/core/value_objects.dart';
import 'package:speed_test/domain/speed/speed_info.dart';
import 'package:speed_test/domain/speed/value_objects.dart';
import 'package:speed_test/domain/speed/wifi_info.dart';

part 'speed.freezed.dart';

@freezed
abstract class Speed implements _$Speed {
  const Speed._();

  const factory Speed({
    @required UniqueId id,
    @required SpeedInfo downloadSpeed,
    @required SpeedInfo uploadSpeed,
    @required TestDateTime dateTime,
    @required WifiInfo wifiInfo,
    @required DeviceName deviceName,
  }) = _Speed;

  factory Speed.empty() => Speed(
        id: UniqueId(null),
        downloadSpeed: SpeedInfo.empty(),
        uploadSpeed: SpeedInfo.empty(),
        dateTime: TestDateTime(DateTime.now().toString()),
        wifiInfo: WifiInfo.empty(),
        deviceName: DeviceName(''),
      );
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:speed_test/domain/speed/value_objects.dart';
part 'speed_info.freezed.dart';

@freezed
abstract class SpeedInfo with _$SpeedInfo {
  const factory SpeedInfo({
    @required SpeedValue value,
    @required SpeedUnit unit,
  }) = _SpeedInfo;

  factory SpeedInfo.empty() => SpeedInfo(
        value: SpeedValue(0),
        unit: SpeedUnit(''),
      );
}

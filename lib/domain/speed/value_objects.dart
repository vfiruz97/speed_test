import 'package:dartz/dartz.dart';
import 'package:speed_test/domain/core/failures.dart';
import 'package:speed_test/domain/core/value_objects.dart';
import 'package:speed_test/domain/core/value_validators.dart';
import 'package:speed_test/domain/speed/speed_info.dart';

class SpeedValue extends ValueObject<double> {
  @override
  final Either<ValueFailure<double>, double> value;

  factory SpeedValue(double input) {
    return SpeedValue._(validateDoubleMoreThanZero(input));
  }

  const SpeedValue._(this.value);
}

class SpeedUnit extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory SpeedUnit(String input) {
    return SpeedUnit._(validateStringNotEmpty(input));
  }

  const SpeedUnit._(this.value);
}

class DownloadSpeed extends ValueObject<SpeedInfo> {
  @override
  final Either<ValueFailure<SpeedInfo>, SpeedInfo> value;

  factory DownloadSpeed(SpeedInfo input) {
    return DownloadSpeed._(right(input));
  }

  const DownloadSpeed._(this.value);
}

class UploadSpeed extends ValueObject<SpeedInfo> {
  @override
  final Either<ValueFailure<SpeedInfo>, SpeedInfo> value;

  factory UploadSpeed(SpeedInfo input) {
    return UploadSpeed._(right(input));
  }

  const UploadSpeed._(this.value);
}

class TestDateTime extends ValueObject<DateTime> {
  @override
  final Either<ValueFailure<DateTime>, DateTime> value;

  factory TestDateTime(String dateTime) {
    return TestDateTime._(
        right(dateTime != null ? DateTime.parse(dateTime) : DateTime.now()));
  }

  const TestDateTime._(this.value);
}

class DeviceName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory DeviceName(String input) {
    return DeviceName._(right(input));
  }

  const DeviceName._(this.value);
}

class WifiName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory WifiName(String input) {
    return WifiName._(right(input));
  }

  const WifiName._(this.value);
}

class IpAddress extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory IpAddress(String input) {
    return IpAddress._(right(input));
  }

  const IpAddress._(this.value);
}

class ServerName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory ServerName(String input) {
    return ServerName._(right(input));
  }

  const ServerName._(this.value);
}

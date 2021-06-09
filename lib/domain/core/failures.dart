import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.empty({
    @required T failedValue,
  }) = Empty<T>;
  const factory ValueFailure.lessZero({
    @required T failedValue,
  }) = LessZero<T>;
  const factory ValueFailure.unexpected({
    @required T failedValue,
  }) = Unexpected<T>;
}

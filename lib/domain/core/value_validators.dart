import 'package:dartz/dartz.dart';

import 'failures.dart';

Either<ValueFailure<String>, String> validateStringNotEmpty(String input) {
  if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(ValueFailure.empty(failedValue: input));
  }
}

Either<ValueFailure<double>, double> validateDoubleMoreThanZero(double input) {
  if (input > 0) {
    return right(input);
  } else {
    return left(ValueFailure.empty(failedValue: input));
  }
}

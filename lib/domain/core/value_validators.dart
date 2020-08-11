import 'package:dartz/dartz.dart';
import 'package:ddd_flutter_example/domain/core/app_constants.dart';
import 'package:ddd_flutter_example/domain/core/failures.dart';

Either<ValueFailure<String>, String> validateMaxStringLength(
  String input,
  int maxLength,
) {
  if (input.length <= maxLength) {
    return right(input);
  } else {
    return left(ValueFailure.exceedingLength(
      failedValue: input,
      max: maxLength,
    ));
  }
}

Either<ValueFailure<String>, String> validateFieldNotEmpty(String input) {
  if (input.isEmpty) {
    return left(ValueFailure.empty(failedValue: input));
  } else {
    return right(input);
  }
}

Either<ValueFailure<String>, String> validateEmailAddress({String email}) {
  if (RegExp(emailRegex).hasMatch(email)) {
    return right(email);
  } else {
    return left(ValueFailure.invalidEmail(failedValue: email));
  }
}

Either<ValueFailure<String>, String> validatePassword(String input) {
  // You can also add some advanced password checks (uppercase/lowercase, at least 1 number, ...)
  if (input.length >= 6) {
    return right(input);
  } else {
    return left(ValueFailure.shortPassword(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateFullName(String input) {
  if (input.length >= 3) {
    return right(input);
  } else {
    return left(ValueFailure.invalidFullName(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validatePasswordMatch(
    String input, String other) {
  if (input == other) {
    return right(input);
  } else {
    return left(ValueFailure.matchPasswordFail(failedValue: other));
  }
}

Either<ValueFailure<String>, String> validateSingleLine(String input) {
  if (input.contains('\n')) {
    return left(ValueFailure.multiline(failedValue: input));
  } else {
    return right(input);
  }
}

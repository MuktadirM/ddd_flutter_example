import 'package:dartz/dartz.dart';

import 'package:ddd_flutter_example/domain/core/failures.dart';
import 'package:ddd_flutter_example/domain/core/value_objects.dart';
import 'package:ddd_flutter_example/domain/core/value_validators.dart';

class EmailAddress extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress({String email}) {
    assert(email != null);

    return EmailAddress._(
      validateEmailAddress(email: email),
    );
  }

  const EmailAddress._(this.value);
}

class Password extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  factory Password(String pass) {
    assert(pass != null);
    return Password._(
      validatePassword(pass),
    );
  }
  const Password._(this.value);
}

class FullName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory FullName(String name) {
    return FullName._(
      validateFullName(name),
    );
  }
  const FullName._(this.value);
}

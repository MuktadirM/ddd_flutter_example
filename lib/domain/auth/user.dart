import 'package:dartz/dartz.dart';
import 'package:ddd_flutter_example/domain/auth/auth_value_objects.dart';
import 'package:ddd_flutter_example/domain/core/entity.dart';
import 'package:ddd_flutter_example/domain/core/failures.dart';
import 'package:ddd_flutter_example/domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

@freezed
abstract class User with _$User implements IEntity {
  const factory User({
    @required UniqueId id,
    @required FullName name,
    @required EmailAddress emailAddress,
  }) = _User;
}

extension UserX on User {
  Option<ValueFailure<dynamic>> get failureOption {
    return name.failureOrUnit
        .andThen(emailAddress.failureOrUnit)
        .fold((l) => some(l), (r) => none());
  }
}

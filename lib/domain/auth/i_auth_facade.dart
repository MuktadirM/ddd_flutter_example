import 'package:dartz/dartz.dart';
import 'package:ddd_flutter_example/domain/auth/auth_failures.dart';
import 'package:ddd_flutter_example/domain/auth/auth_value_objects.dart';
import 'package:ddd_flutter_example/domain/auth/user.dart';
import 'package:flutter/foundation.dart';

abstract class IAuthFacade {
  Future<Option<User>> getSignedInUser();
  Future<Either<AuthFailure, Unit>> registerWithEmailPassword({
    @required FullName name,
    @required EmailAddress emailAddress,
    @required Password password,
  });

  Future<Either<AuthFailure, Unit>> signWithEmailPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  });

  Future<Either<AuthFailure, Unit>> signInWithGoogle();

  Future<void> signOut();
}

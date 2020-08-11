import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';

import 'package:ddd_flutter_example/domain/auth/auth_failures.dart';
import 'package:ddd_flutter_example/domain/auth/auth_value_objects.dart';
import 'package:ddd_flutter_example/domain/auth/i_auth_facade.dart';
import 'package:ddd_flutter_example/domain/auth/user.dart';
import 'package:ddd_flutter_example/infrastructure/auth/firebase_user_mapper.dart';

@Injectable(as: IAuthFacade)
class FirebaseAuthFacade implements IAuthFacade {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;
  final FirebaseUserMapper _firebaseUserMapper;

  FirebaseAuthFacade(
    this._firebaseAuth,
    this._googleSignIn,
    this._firebaseUserMapper,
  );

  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailPassword(
      {FullName name, EmailAddress emailAddress, Password password}) async {
    final email = emailAddress.getOrCrash();
    final pass = password.getOrCrash();

    try {
      return await _firebaseAuth
          .signInWithEmailAndPassword(email: email, password: pass)
          .then((value) => _saveUserToDataBase(
                  name: name, email: emailAddress, user: value.user)
              .then((_) => right(unit)))
          .then((_) => right(unit));
    } on PlatformException catch (e) {
      if (e.code == 'ERROR_EMAIL_ALREADY_IN_USE') {
        return left(const AuthFailure.invalidEmailAndPasswordCombination());
      }
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() async {
    try {
      final googleUser = await _googleSignIn.signIn();

      if (googleUser == null) {
        return left(const AuthFailure.cancelledByUser());
      }

      final googleAuthentication = await googleUser.authentication;
      final authCredential = GoogleAuthProvider.getCredential(
        accessToken: googleAuthentication.accessToken,
        idToken: googleAuthentication.idToken,
      );
      return _firebaseAuth
          .signInWithCredential(authCredential)
          .then((value) => _saveUserToDataBase(
                  name: FullName(value.user.displayName),
                  email: EmailAddress(email: value.user.email),
                  user: value.user)
              .then((_) => right(unit)))
          .then((r) => right(unit));
    } on PlatformException catch (_) {
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signWithEmailPassword(
      {EmailAddress emailAddress, Password password}) async {
    final email = emailAddress.getOrCrash();
    final pass = password.getOrCrash();

    try {
      return await _firebaseAuth
          .signInWithEmailAndPassword(email: email, password: pass)
          .then((_) => right(unit));
    } on PlatformException catch (e) {
      if (e.code == 'ERROR_WRONG_PASSWORD' ||
          e.code == 'ERROR_USER_NOT_FOUND') {
        return left(const AuthFailure.invalidEmailAndPasswordCombination());
      }
      return left(const AuthFailure.serverError());
    }
  }

  //replace this error with failure
  Future<Either<AuthFailure, Unit>> _saveUserToDataBase(
      {@required FullName name,
      @required EmailAddress email,
      @required FirebaseUser user}) async {
    print(name.getOrCrash());
    const insertToDb = true;
    if (insertToDb) {
      return right(unit);
    }
    return left(const AuthFailure.cancelledByUser());
  }

  @override
  Future<void> signOut() async {
    return Future.wait([
      _googleSignIn.signOut(),
      _firebaseAuth.signOut(),
    ]);
  }

  @override
  Future<Option<User>> getSignedInUser() async => _firebaseAuth
      .currentUser()
      .then((u) => optionOf(_firebaseUserMapper.toDomain(u)));
}

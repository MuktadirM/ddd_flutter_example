// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'application/auth/auth_bloc.dart';
import 'infrastructure/auth/firebase_auth_facade.dart';
import 'infrastructure/core/di/firebase_injectable_module.dart';
import 'infrastructure/auth/firebase_user_mapper.dart';
import 'domain/auth/i_auth_facade.dart';
import 'application/auth/sign_in_form/sign_in_form_bloc.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.factory<FirebaseAuth>(() => firebaseInjectableModule.firebaseAuth);
  gh.factory<Firestore>(() => firebaseInjectableModule.firestore);
  gh.factory<GoogleSignIn>(() => firebaseInjectableModule.googleSignIn);
  gh.factory<IAuthFacade>(() => FirebaseAuthFacade(
        get<FirebaseAuth>(),
        get<GoogleSignIn>(),
        get<FirebaseUserMapper>(),
      ));
  gh.factory<SignInFormBloc>(() => SignInFormBloc(get<IAuthFacade>()));
  gh.factory<AuthBloc>(() => AuthBloc(get<IAuthFacade>()));

  // Eager singletons must be registered in the right order
  gh.singleton<FirebaseUserMapper>(FirebaseUserMapper());
  return get;
}

class _$FirebaseInjectableModule extends FirebaseInjectableModule {}

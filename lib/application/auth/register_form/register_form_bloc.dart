import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import 'package:ddd_flutter_example/domain/auth/auth_failures.dart';
import 'package:ddd_flutter_example/domain/auth/auth_value_objects.dart';
import 'package:ddd_flutter_example/domain/auth/i_auth_facade.dart';
import 'package:injectable/injectable.dart';

part 'register_form_bloc.freezed.dart';
part 'register_form_event.dart';
part 'register_form_state.dart';

@injectable
class RegisterFormBloc extends Bloc<RegisterFormEvent, RegisterFormState> {
  final IAuthFacade _authFacade;

  RegisterFormBloc(this._authFacade) : super(RegisterFormState.initial());

  @override
  Stream<RegisterFormState> mapEventToState(
    RegisterFormEvent event,
  ) async* {
    yield* event.map(
        emailChanged: null,
        passwordChanged: null,
        passwordChangedAnother: null,
        registerWithEmailPassPressed: null);
  }
}

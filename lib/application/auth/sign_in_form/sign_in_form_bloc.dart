import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import 'package:ddd_flutter_example/domain/auth/auth_failures.dart';
import 'package:ddd_flutter_example/domain/auth/auth_value_objects.dart';
import 'package:ddd_flutter_example/domain/auth/i_auth_facade.dart';
import 'package:injectable/injectable.dart';

part 'sign_in_form_bloc.freezed.dart';
part 'sign_in_form_event.dart';
part 'sign_in_form_state.dart';

@injectable
class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  final IAuthFacade _authFacade;

  SignInFormBloc(this._authFacade) : super(SignInFormState.initial());

  @override
  Stream<SignInFormState> mapEventToState(
    SignInFormEvent event,
  ) async* {
    yield* event.map(
      emailChanged: (e) async* {
        yield state.copyWith(
          emailAddress: EmailAddress(email: e.email),
          authFailureSuccess: none(),
        );
      },
      passwordChanged: (e) async* {
        yield state.copyWith(
          password: Password(e.password),
          authFailureSuccess: none(),
        );
      },
      signInWithEmailPasswordPressed: (e) async* {
        Either<AuthFailure, Unit> failureOrSuccess;
        if (state.emailAddress.isValid() && state.password.isValid()) {
          yield state.copyWith(
            isSubmitting: true,
            authFailureSuccess: none(),
          );

          failureOrSuccess = await _authFacade.signWithEmailPassword(
            emailAddress: state.emailAddress,
            password: state.password,
          );
        }
        yield state.copyWith(
          isSubmitting: false,
          showErrorMsg: true,
          authFailureSuccess: optionOf(failureOrSuccess),
        );
      },
      signInWithGooglePressed: (e) async* {
        yield state.copyWith(
          isSubmitting: true,
          authFailureSuccess: none(),
        );
        final failureOrSuccess = await _authFacade.signInWithGoogle();
        yield state.copyWith(
          isSubmitting: false,
          authFailureSuccess: some(failureOrSuccess),
        );
      },
    );
  }
}

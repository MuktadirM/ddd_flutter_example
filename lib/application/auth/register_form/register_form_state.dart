part of 'register_form_bloc.dart';

@freezed
abstract class RegisterFormState with _$RegisterFormState {
  const factory RegisterFormState({
    @required FullName fullName,
    @required EmailAddress emailAddress,
    @required Password password,
    @required Password anotherPass,
    @required bool showErrorMsg,
    @required bool isSubmitting,
    @required Option<Either<AuthFailure, Unit>> authFailureSuccess,
  }) = _RegisterFormState;

  factory RegisterFormState.initial() => RegisterFormState(
        fullName: FullName(''),
        emailAddress: EmailAddress(email: ''),
        password: Password(''),
        anotherPass: Password(''),
        showErrorMsg: false,
        isSubmitting: false,
        authFailureSuccess: none(),
      );
}

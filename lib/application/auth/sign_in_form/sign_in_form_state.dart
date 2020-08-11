part of 'sign_in_form_bloc.dart';

@freezed
abstract class SignInFormState with _$SignInFormState {
  const factory SignInFormState({
    @required EmailAddress emailAddress,
    @required Password password,
    @required bool showErrorMsg,
    @required bool isSubmitting,
    @required Option<Either<AuthFailure, Unit>> authFailureSuccess,
  }) = _SignInFormState;

  factory SignInFormState.initial() => SignInFormState(
        emailAddress: EmailAddress(email: ''),
        password: Password(''),
        showErrorMsg: false,
        isSubmitting: false,
        authFailureSuccess: none(),
      );
}

part of 'register_form_bloc.dart';

@freezed
abstract class RegisterFormEvent with _$RegisterFormEvent {
  const factory RegisterFormEvent.emailChanged(String email) = EmailChanged;
  const factory RegisterFormEvent.passwordChanged(String password) =
      PasswordChanged;
  const factory RegisterFormEvent.passwordChangedAnother(String password) =
      PasswordChangedAnother;
  const factory RegisterFormEvent.registerWithEmailPassPressed() =
      SignInWithEmailPasswordPressed;
}

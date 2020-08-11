// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'register_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$RegisterFormEventTearOff {
  const _$RegisterFormEventTearOff();

// ignore: unused_element
  EmailChanged emailChanged(String email) {
    return EmailChanged(
      email,
    );
  }

// ignore: unused_element
  PasswordChanged passwordChanged(String password) {
    return PasswordChanged(
      password,
    );
  }

// ignore: unused_element
  PasswordChangedAnother passwordChangedAnother(String password) {
    return PasswordChangedAnother(
      password,
    );
  }

// ignore: unused_element
  SignInWithEmailPasswordPressed registerWithEmailPassPressed() {
    return const SignInWithEmailPasswordPressed();
  }
}

// ignore: unused_element
const $RegisterFormEvent = _$RegisterFormEventTearOff();

mixin _$RegisterFormEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String email),
    @required Result passwordChanged(String password),
    @required Result passwordChangedAnother(String password),
    @required Result registerWithEmailPassPressed(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String email),
    Result passwordChanged(String password),
    Result passwordChangedAnother(String password),
    Result registerWithEmailPassPressed(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result passwordChangedAnother(PasswordChangedAnother value),
    @required
        Result registerWithEmailPassPressed(
            SignInWithEmailPasswordPressed value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result passwordChangedAnother(PasswordChangedAnother value),
    Result registerWithEmailPassPressed(SignInWithEmailPasswordPressed value),
    @required Result orElse(),
  });
}

abstract class $RegisterFormEventCopyWith<$Res> {
  factory $RegisterFormEventCopyWith(
          RegisterFormEvent value, $Res Function(RegisterFormEvent) then) =
      _$RegisterFormEventCopyWithImpl<$Res>;
}

class _$RegisterFormEventCopyWithImpl<$Res>
    implements $RegisterFormEventCopyWith<$Res> {
  _$RegisterFormEventCopyWithImpl(this._value, this._then);

  final RegisterFormEvent _value;
  // ignore: unused_field
  final $Res Function(RegisterFormEvent) _then;
}

abstract class $EmailChangedCopyWith<$Res> {
  factory $EmailChangedCopyWith(
          EmailChanged value, $Res Function(EmailChanged) then) =
      _$EmailChangedCopyWithImpl<$Res>;
  $Res call({String email});
}

class _$EmailChangedCopyWithImpl<$Res>
    extends _$RegisterFormEventCopyWithImpl<$Res>
    implements $EmailChangedCopyWith<$Res> {
  _$EmailChangedCopyWithImpl(
      EmailChanged _value, $Res Function(EmailChanged) _then)
      : super(_value, (v) => _then(v as EmailChanged));

  @override
  EmailChanged get _value => super._value as EmailChanged;

  @override
  $Res call({
    Object email = freezed,
  }) {
    return _then(EmailChanged(
      email == freezed ? _value.email : email as String,
    ));
  }
}

class _$EmailChanged with DiagnosticableTreeMixin implements EmailChanged {
  const _$EmailChanged(this.email) : assert(email != null);

  @override
  final String email;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RegisterFormEvent.emailChanged(email: $email)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RegisterFormEvent.emailChanged'))
      ..add(DiagnosticsProperty('email', email));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EmailChanged &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(email);

  @override
  $EmailChangedCopyWith<EmailChanged> get copyWith =>
      _$EmailChangedCopyWithImpl<EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String email),
    @required Result passwordChanged(String password),
    @required Result passwordChangedAnother(String password),
    @required Result registerWithEmailPassPressed(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(passwordChangedAnother != null);
    assert(registerWithEmailPassPressed != null);
    return emailChanged(email);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String email),
    Result passwordChanged(String password),
    Result passwordChangedAnother(String password),
    Result registerWithEmailPassPressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result passwordChangedAnother(PasswordChangedAnother value),
    @required
        Result registerWithEmailPassPressed(
            SignInWithEmailPasswordPressed value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(passwordChangedAnother != null);
    assert(registerWithEmailPassPressed != null);
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result passwordChangedAnother(PasswordChangedAnother value),
    Result registerWithEmailPassPressed(SignInWithEmailPasswordPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class EmailChanged implements RegisterFormEvent {
  const factory EmailChanged(String email) = _$EmailChanged;

  String get email;
  $EmailChangedCopyWith<EmailChanged> get copyWith;
}

abstract class $PasswordChangedCopyWith<$Res> {
  factory $PasswordChangedCopyWith(
          PasswordChanged value, $Res Function(PasswordChanged) then) =
      _$PasswordChangedCopyWithImpl<$Res>;
  $Res call({String password});
}

class _$PasswordChangedCopyWithImpl<$Res>
    extends _$RegisterFormEventCopyWithImpl<$Res>
    implements $PasswordChangedCopyWith<$Res> {
  _$PasswordChangedCopyWithImpl(
      PasswordChanged _value, $Res Function(PasswordChanged) _then)
      : super(_value, (v) => _then(v as PasswordChanged));

  @override
  PasswordChanged get _value => super._value as PasswordChanged;

  @override
  $Res call({
    Object password = freezed,
  }) {
    return _then(PasswordChanged(
      password == freezed ? _value.password : password as String,
    ));
  }
}

class _$PasswordChanged
    with DiagnosticableTreeMixin
    implements PasswordChanged {
  const _$PasswordChanged(this.password) : assert(password != null);

  @override
  final String password;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RegisterFormEvent.passwordChanged(password: $password)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RegisterFormEvent.passwordChanged'))
      ..add(DiagnosticsProperty('password', password));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PasswordChanged &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(password);

  @override
  $PasswordChangedCopyWith<PasswordChanged> get copyWith =>
      _$PasswordChangedCopyWithImpl<PasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String email),
    @required Result passwordChanged(String password),
    @required Result passwordChangedAnother(String password),
    @required Result registerWithEmailPassPressed(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(passwordChangedAnother != null);
    assert(registerWithEmailPassPressed != null);
    return passwordChanged(password);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String email),
    Result passwordChanged(String password),
    Result passwordChangedAnother(String password),
    Result registerWithEmailPassPressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (passwordChanged != null) {
      return passwordChanged(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result passwordChangedAnother(PasswordChangedAnother value),
    @required
        Result registerWithEmailPassPressed(
            SignInWithEmailPasswordPressed value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(passwordChangedAnother != null);
    assert(registerWithEmailPassPressed != null);
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result passwordChangedAnother(PasswordChangedAnother value),
    Result registerWithEmailPassPressed(SignInWithEmailPasswordPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordChanged implements RegisterFormEvent {
  const factory PasswordChanged(String password) = _$PasswordChanged;

  String get password;
  $PasswordChangedCopyWith<PasswordChanged> get copyWith;
}

abstract class $PasswordChangedAnotherCopyWith<$Res> {
  factory $PasswordChangedAnotherCopyWith(PasswordChangedAnother value,
          $Res Function(PasswordChangedAnother) then) =
      _$PasswordChangedAnotherCopyWithImpl<$Res>;
  $Res call({String password});
}

class _$PasswordChangedAnotherCopyWithImpl<$Res>
    extends _$RegisterFormEventCopyWithImpl<$Res>
    implements $PasswordChangedAnotherCopyWith<$Res> {
  _$PasswordChangedAnotherCopyWithImpl(PasswordChangedAnother _value,
      $Res Function(PasswordChangedAnother) _then)
      : super(_value, (v) => _then(v as PasswordChangedAnother));

  @override
  PasswordChangedAnother get _value => super._value as PasswordChangedAnother;

  @override
  $Res call({
    Object password = freezed,
  }) {
    return _then(PasswordChangedAnother(
      password == freezed ? _value.password : password as String,
    ));
  }
}

class _$PasswordChangedAnother
    with DiagnosticableTreeMixin
    implements PasswordChangedAnother {
  const _$PasswordChangedAnother(this.password) : assert(password != null);

  @override
  final String password;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RegisterFormEvent.passwordChangedAnother(password: $password)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'RegisterFormEvent.passwordChangedAnother'))
      ..add(DiagnosticsProperty('password', password));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PasswordChangedAnother &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(password);

  @override
  $PasswordChangedAnotherCopyWith<PasswordChangedAnother> get copyWith =>
      _$PasswordChangedAnotherCopyWithImpl<PasswordChangedAnother>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String email),
    @required Result passwordChanged(String password),
    @required Result passwordChangedAnother(String password),
    @required Result registerWithEmailPassPressed(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(passwordChangedAnother != null);
    assert(registerWithEmailPassPressed != null);
    return passwordChangedAnother(password);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String email),
    Result passwordChanged(String password),
    Result passwordChangedAnother(String password),
    Result registerWithEmailPassPressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (passwordChangedAnother != null) {
      return passwordChangedAnother(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result passwordChangedAnother(PasswordChangedAnother value),
    @required
        Result registerWithEmailPassPressed(
            SignInWithEmailPasswordPressed value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(passwordChangedAnother != null);
    assert(registerWithEmailPassPressed != null);
    return passwordChangedAnother(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result passwordChangedAnother(PasswordChangedAnother value),
    Result registerWithEmailPassPressed(SignInWithEmailPasswordPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (passwordChangedAnother != null) {
      return passwordChangedAnother(this);
    }
    return orElse();
  }
}

abstract class PasswordChangedAnother implements RegisterFormEvent {
  const factory PasswordChangedAnother(String password) =
      _$PasswordChangedAnother;

  String get password;
  $PasswordChangedAnotherCopyWith<PasswordChangedAnother> get copyWith;
}

abstract class $SignInWithEmailPasswordPressedCopyWith<$Res> {
  factory $SignInWithEmailPasswordPressedCopyWith(
          SignInWithEmailPasswordPressed value,
          $Res Function(SignInWithEmailPasswordPressed) then) =
      _$SignInWithEmailPasswordPressedCopyWithImpl<$Res>;
}

class _$SignInWithEmailPasswordPressedCopyWithImpl<$Res>
    extends _$RegisterFormEventCopyWithImpl<$Res>
    implements $SignInWithEmailPasswordPressedCopyWith<$Res> {
  _$SignInWithEmailPasswordPressedCopyWithImpl(
      SignInWithEmailPasswordPressed _value,
      $Res Function(SignInWithEmailPasswordPressed) _then)
      : super(_value, (v) => _then(v as SignInWithEmailPasswordPressed));

  @override
  SignInWithEmailPasswordPressed get _value =>
      super._value as SignInWithEmailPasswordPressed;
}

class _$SignInWithEmailPasswordPressed
    with DiagnosticableTreeMixin
    implements SignInWithEmailPasswordPressed {
  const _$SignInWithEmailPasswordPressed();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RegisterFormEvent.registerWithEmailPassPressed()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'RegisterFormEvent.registerWithEmailPassPressed'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SignInWithEmailPasswordPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String email),
    @required Result passwordChanged(String password),
    @required Result passwordChangedAnother(String password),
    @required Result registerWithEmailPassPressed(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(passwordChangedAnother != null);
    assert(registerWithEmailPassPressed != null);
    return registerWithEmailPassPressed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String email),
    Result passwordChanged(String password),
    Result passwordChangedAnother(String password),
    Result registerWithEmailPassPressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (registerWithEmailPassPressed != null) {
      return registerWithEmailPassPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result passwordChangedAnother(PasswordChangedAnother value),
    @required
        Result registerWithEmailPassPressed(
            SignInWithEmailPasswordPressed value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(passwordChangedAnother != null);
    assert(registerWithEmailPassPressed != null);
    return registerWithEmailPassPressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result passwordChangedAnother(PasswordChangedAnother value),
    Result registerWithEmailPassPressed(SignInWithEmailPasswordPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (registerWithEmailPassPressed != null) {
      return registerWithEmailPassPressed(this);
    }
    return orElse();
  }
}

abstract class SignInWithEmailPasswordPressed implements RegisterFormEvent {
  const factory SignInWithEmailPasswordPressed() =
      _$SignInWithEmailPasswordPressed;
}

class _$RegisterFormStateTearOff {
  const _$RegisterFormStateTearOff();

// ignore: unused_element
  _RegisterFormState call(
      {@required FullName fullName,
      @required EmailAddress emailAddress,
      @required Password password,
      @required Password anotherPass,
      @required bool showErrorMsg,
      @required bool isSubmitting,
      @required Option<Either<AuthFailure, Unit>> authFailureSuccess}) {
    return _RegisterFormState(
      fullName: fullName,
      emailAddress: emailAddress,
      password: password,
      anotherPass: anotherPass,
      showErrorMsg: showErrorMsg,
      isSubmitting: isSubmitting,
      authFailureSuccess: authFailureSuccess,
    );
  }
}

// ignore: unused_element
const $RegisterFormState = _$RegisterFormStateTearOff();

mixin _$RegisterFormState {
  FullName get fullName;
  EmailAddress get emailAddress;
  Password get password;
  Password get anotherPass;
  bool get showErrorMsg;
  bool get isSubmitting;
  Option<Either<AuthFailure, Unit>> get authFailureSuccess;

  $RegisterFormStateCopyWith<RegisterFormState> get copyWith;
}

abstract class $RegisterFormStateCopyWith<$Res> {
  factory $RegisterFormStateCopyWith(
          RegisterFormState value, $Res Function(RegisterFormState) then) =
      _$RegisterFormStateCopyWithImpl<$Res>;
  $Res call(
      {FullName fullName,
      EmailAddress emailAddress,
      Password password,
      Password anotherPass,
      bool showErrorMsg,
      bool isSubmitting,
      Option<Either<AuthFailure, Unit>> authFailureSuccess});
}

class _$RegisterFormStateCopyWithImpl<$Res>
    implements $RegisterFormStateCopyWith<$Res> {
  _$RegisterFormStateCopyWithImpl(this._value, this._then);

  final RegisterFormState _value;
  // ignore: unused_field
  final $Res Function(RegisterFormState) _then;

  @override
  $Res call({
    Object fullName = freezed,
    Object emailAddress = freezed,
    Object password = freezed,
    Object anotherPass = freezed,
    Object showErrorMsg = freezed,
    Object isSubmitting = freezed,
    Object authFailureSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      fullName: fullName == freezed ? _value.fullName : fullName as FullName,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as EmailAddress,
      password: password == freezed ? _value.password : password as Password,
      anotherPass:
          anotherPass == freezed ? _value.anotherPass : anotherPass as Password,
      showErrorMsg:
          showErrorMsg == freezed ? _value.showErrorMsg : showErrorMsg as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      authFailureSuccess: authFailureSuccess == freezed
          ? _value.authFailureSuccess
          : authFailureSuccess as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

abstract class _$RegisterFormStateCopyWith<$Res>
    implements $RegisterFormStateCopyWith<$Res> {
  factory _$RegisterFormStateCopyWith(
          _RegisterFormState value, $Res Function(_RegisterFormState) then) =
      __$RegisterFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {FullName fullName,
      EmailAddress emailAddress,
      Password password,
      Password anotherPass,
      bool showErrorMsg,
      bool isSubmitting,
      Option<Either<AuthFailure, Unit>> authFailureSuccess});
}

class __$RegisterFormStateCopyWithImpl<$Res>
    extends _$RegisterFormStateCopyWithImpl<$Res>
    implements _$RegisterFormStateCopyWith<$Res> {
  __$RegisterFormStateCopyWithImpl(
      _RegisterFormState _value, $Res Function(_RegisterFormState) _then)
      : super(_value, (v) => _then(v as _RegisterFormState));

  @override
  _RegisterFormState get _value => super._value as _RegisterFormState;

  @override
  $Res call({
    Object fullName = freezed,
    Object emailAddress = freezed,
    Object password = freezed,
    Object anotherPass = freezed,
    Object showErrorMsg = freezed,
    Object isSubmitting = freezed,
    Object authFailureSuccess = freezed,
  }) {
    return _then(_RegisterFormState(
      fullName: fullName == freezed ? _value.fullName : fullName as FullName,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as EmailAddress,
      password: password == freezed ? _value.password : password as Password,
      anotherPass:
          anotherPass == freezed ? _value.anotherPass : anotherPass as Password,
      showErrorMsg:
          showErrorMsg == freezed ? _value.showErrorMsg : showErrorMsg as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      authFailureSuccess: authFailureSuccess == freezed
          ? _value.authFailureSuccess
          : authFailureSuccess as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

class _$_RegisterFormState
    with DiagnosticableTreeMixin
    implements _RegisterFormState {
  const _$_RegisterFormState(
      {@required this.fullName,
      @required this.emailAddress,
      @required this.password,
      @required this.anotherPass,
      @required this.showErrorMsg,
      @required this.isSubmitting,
      @required this.authFailureSuccess})
      : assert(fullName != null),
        assert(emailAddress != null),
        assert(password != null),
        assert(anotherPass != null),
        assert(showErrorMsg != null),
        assert(isSubmitting != null),
        assert(authFailureSuccess != null);

  @override
  final FullName fullName;
  @override
  final EmailAddress emailAddress;
  @override
  final Password password;
  @override
  final Password anotherPass;
  @override
  final bool showErrorMsg;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<AuthFailure, Unit>> authFailureSuccess;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RegisterFormState(fullName: $fullName, emailAddress: $emailAddress, password: $password, anotherPass: $anotherPass, showErrorMsg: $showErrorMsg, isSubmitting: $isSubmitting, authFailureSuccess: $authFailureSuccess)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RegisterFormState'))
      ..add(DiagnosticsProperty('fullName', fullName))
      ..add(DiagnosticsProperty('emailAddress', emailAddress))
      ..add(DiagnosticsProperty('password', password))
      ..add(DiagnosticsProperty('anotherPass', anotherPass))
      ..add(DiagnosticsProperty('showErrorMsg', showErrorMsg))
      ..add(DiagnosticsProperty('isSubmitting', isSubmitting))
      ..add(DiagnosticsProperty('authFailureSuccess', authFailureSuccess));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RegisterFormState &&
            (identical(other.fullName, fullName) ||
                const DeepCollectionEquality()
                    .equals(other.fullName, fullName)) &&
            (identical(other.emailAddress, emailAddress) ||
                const DeepCollectionEquality()
                    .equals(other.emailAddress, emailAddress)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.anotherPass, anotherPass) ||
                const DeepCollectionEquality()
                    .equals(other.anotherPass, anotherPass)) &&
            (identical(other.showErrorMsg, showErrorMsg) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMsg, showErrorMsg)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.authFailureSuccess, authFailureSuccess) ||
                const DeepCollectionEquality()
                    .equals(other.authFailureSuccess, authFailureSuccess)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(fullName) ^
      const DeepCollectionEquality().hash(emailAddress) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(anotherPass) ^
      const DeepCollectionEquality().hash(showErrorMsg) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(authFailureSuccess);

  @override
  _$RegisterFormStateCopyWith<_RegisterFormState> get copyWith =>
      __$RegisterFormStateCopyWithImpl<_RegisterFormState>(this, _$identity);
}

abstract class _RegisterFormState implements RegisterFormState {
  const factory _RegisterFormState(
          {@required FullName fullName,
          @required EmailAddress emailAddress,
          @required Password password,
          @required Password anotherPass,
          @required bool showErrorMsg,
          @required bool isSubmitting,
          @required Option<Either<AuthFailure, Unit>> authFailureSuccess}) =
      _$_RegisterFormState;

  @override
  FullName get fullName;
  @override
  EmailAddress get emailAddress;
  @override
  Password get password;
  @override
  Password get anotherPass;
  @override
  bool get showErrorMsg;
  @override
  bool get isSubmitting;
  @override
  Option<Either<AuthFailure, Unit>> get authFailureSuccess;
  @override
  _$RegisterFormStateCopyWith<_RegisterFormState> get copyWith;
}

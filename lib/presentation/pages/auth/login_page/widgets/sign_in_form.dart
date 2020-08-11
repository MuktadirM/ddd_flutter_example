import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:ddd_flutter_example/application/auth/auth_bloc.dart';
import 'package:ddd_flutter_example/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:ddd_flutter_example/presentation/core/style_constant.dart';
import 'package:ddd_flutter_example/presentation/routes/router.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
      listener: (context, state) {
        state.authFailureSuccess.fold(
          () {},
          (either) {
            either.fold(
              (failure) {
                FlushbarHelper.createError(
                  message: failure.map(
                    // Use localized strings here in your apps
                    cancelledByUser: (_) => 'Sign in Cancelled',
                    serverError: (_) => 'Server error',
                    emailAlreadyInUse: (_) => 'Email already in use',
                    invalidEmailAndPasswordCombination: (_) =>
                        'Invalid email and password combination',
                  ),
                ).show(context);
              },
              (_) {
                Navigator.of(context).pushReplacementNamed(Routes.homePage);
                context
                    .bloc<AuthBloc>()
                    .add(const AuthEvent.authCheckRequested());
              },
            );
          },
        );
      },
      builder: (context, state) {
        return Form(
          autovalidate: state.showErrorMsg,
          child: ListView(
            padding: const EdgeInsets.all(8.0),
            children: <Widget>[
              const Text(
                'M',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 120),
              ),
              const SizedBox(height: 8),
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  labelText: 'Email',
                ),
                autocorrect: false,
                onChanged: (value) => context
                    .bloc<SignInFormBloc>()
                    .add(SignInFormEvent.emailChanged(value)),
                validator: (_) => context
                    .bloc<SignInFormBloc>()
                    .state
                    .emailAddress
                    .value
                    .fold(
                      (f) => f.maybeMap(
                        invalidEmail: (_) => 'Invalid email',
                        orElse: () => null,
                      ),
                      (_) => null,
                    ),
              ),
              const SizedBox(height: 8),
              TextFormField(
                // controller: passwordController,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  labelText: 'Password',
                ),
                obscureText: true,
                autocorrect: false,
                onChanged: (value) => context
                    .bloc<SignInFormBloc>()
                    .add(SignInFormEvent.passwordChanged(value)),
                validator: (_) =>
                    context.bloc<SignInFormBloc>().state.password.value.fold(
                          (f) => f.maybeMap(
                            shortPassword: (_) => 'Short password',
                            orElse: () => null,
                          ),
                          (_) => null,
                        ),
              ),
              const SizedBox(height: 8),
              ButtonTheme(
                height: buttonHeight,
                child: RaisedButton(
                  onPressed: () => context.bloc<SignInFormBloc>().add(
                      const SignInFormEvent.signInWithEmailPasswordPressed()),
                  color: Colors.grey,
                  child: const Text(
                    'Sign in',
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              ButtonTheme(
                height: buttonHeight,
                child: RaisedButton(
                  onPressed: () => context
                      .bloc<SignInFormBloc>()
                      .add(const SignInFormEvent.signInWithGooglePressed()),
                  color: Colors.grey,
                  child: const Text(
                    'Sign in with Google',
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              ButtonTheme(
                height: buttonHeight,
                child: RaisedButton(
                  onPressed: () => {
                    Navigator.of(context)
                        .pushReplacementNamed(Routes.registerPage),
                  },
                  color: Colors.grey,
                  child: const Text(
                    "Don't have an account ?",
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ),
              if (state.isSubmitting) ...[
                const SizedBox(height: 8),
                const LinearProgressIndicator(value: null),
              ]
            ],
          ),
        );
      },
    );
  }
}

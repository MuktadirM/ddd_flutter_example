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
              const SizedBox(height: 20),
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: const Image(
                    fit: BoxFit.cover,
                    height: 130,
                    width: 130,
                    image: AssetImage(
                      "assets/logo/logo_place.jpg",
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 60),
              TextFormField(
                style: const TextStyle(
                  fontFamily: 'RobotoMono',
                  fontWeight: FontWeight.w500,
                ),
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
                style: const TextStyle(
                  fontFamily: 'RobotoMono',
                  fontWeight: FontWeight.w500,
                ),
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
                  color: const Color(0xFF706B6B),
                  child: const Text(
                    'Sign in',
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                      fontStyle: FontStyle.normal,
                      fontFamily: 'RobotoMono',
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
                  color: const Color(0xFF706B6B),
                  child: const Text(
                    'Sign in with Google',
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                      fontFamily: 'RobotoMono',
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
                  color: const Color(0xFF706B6B),
                  child: const Text(
                    "Don't have an account ?",
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                      fontFamily: 'RobotoMono',
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

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:ddd_flutter_example/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:ddd_flutter_example/injection.dart';
import 'package:ddd_flutter_example/presentation/pages/auth/login_page/widgets/sign_in_form.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: BlocProvider(
        create: (context) => getIt<SignInFormBloc>(),
        child: const SignInForm(),
      ),
    );
  }
}

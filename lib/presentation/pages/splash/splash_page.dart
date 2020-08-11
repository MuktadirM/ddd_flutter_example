import 'package:ddd_flutter_example/application/auth/auth_bloc.dart';
import 'package:ddd_flutter_example/presentation/pages/splash/widgets/centeral_progress_bar.dart';
import 'package:ddd_flutter_example/presentation/routes/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.map(
          initial: (_) {},
          authenticated: (_) =>
              Navigator.of(context).pushReplacementNamed(Routes.homePage),
          unauthenticated: (_) =>
              Navigator.of(context).pushReplacementNamed(Routes.loginPage),
        );
      },
      child: CenteralProgressBar(),
    );
  }
}

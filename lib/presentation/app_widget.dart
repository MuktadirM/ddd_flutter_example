import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:ddd_flutter_example/application/auth/auth_bloc.dart';
import 'package:ddd_flutter_example/injection.dart';
import 'package:ddd_flutter_example/presentation/routes/router.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) =>
              getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested()),
        ),
      ],
      child: MaterialApp(
        title: 'Not Visiable',
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light().copyWith(
          primaryColor: const Color.fromRGBO(7, 29, 54, 1.0),
          accentColor: Colors.blueAccent,
          appBarTheme: ThemeData.light().appBarTheme.copyWith(
                brightness: Brightness.dark,
                color: const Color.fromRGBO(7, 29, 54, 1.0),
                iconTheme: ThemeData.dark().iconTheme,
              ),
          inputDecorationTheme: InputDecorationTheme(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
        initialRoute: Routes.initialRoute,
        onGenerateRoute: RouteGenerator.onGenerateRoute,
      ),
    );
  }
}

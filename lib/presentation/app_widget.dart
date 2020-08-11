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
          primaryColor: const Color(0xFF0F1C47),
          accentColor: Colors.blueAccent,
          appBarTheme: ThemeData.light().appBarTheme.copyWith(
                brightness: Brightness.dark,
                color: const Color(0xFF0F1C47),
                iconTheme: ThemeData.dark().iconTheme,
              ),
          inputDecorationTheme: InputDecorationTheme(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
        initialRoute: Routes.initialRoute,
        onGenerateRoute: RouteGenerator.onGenerateRoute,
      ),
    );
  }
}

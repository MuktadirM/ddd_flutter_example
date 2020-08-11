import 'package:flutter/material.dart';

import 'package:ddd_flutter_example/presentation/core/style_constant.dart';
import 'package:ddd_flutter_example/presentation/routes/router.dart';

class RegistrationForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: ListView(
        padding: const EdgeInsets.all(8),
        children: [
          const Text(
            'logo',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 120),
          ),
          const SizedBox(height: 8),
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.person),
              labelText: 'Full Name',
            ),
            autocorrect: false,
          ),
          const SizedBox(height: 8),
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.email),
              labelText: 'Email',
            ),
            autocorrect: false,
          ),
          const SizedBox(height: 8),
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.lock),
              labelText: 'Password',
            ),
            autocorrect: false,
            obscureText: true,
          ),
          const SizedBox(height: 8),
          ButtonTheme(
            height: buttonHeight,
            child: RaisedButton(
              onPressed: () => {},
              color: Colors.grey,
              child: const Text(
                "Complete Registration",
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
                Navigator.of(context).pushReplacementNamed(Routes.loginPage),
              },
              color: Colors.grey,
              child: const Text(
                "I have an account",
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

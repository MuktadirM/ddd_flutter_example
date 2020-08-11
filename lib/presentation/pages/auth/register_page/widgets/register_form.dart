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
              color: const Color(0xFF706B6B),
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
              color: const Color(0xFF706B6B),
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

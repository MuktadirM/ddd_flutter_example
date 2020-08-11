import 'package:ddd_flutter_example/presentation/pages/auth/register_page/widgets/register_form.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
      ),
      body: RegistrationForm(),
    );
  }
}

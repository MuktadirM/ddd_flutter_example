import 'package:flutter/material.dart';

class CenteralProgressBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromRGBO(7, 29, 54, 1.0),
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}

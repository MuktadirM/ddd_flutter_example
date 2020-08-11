import 'package:ddd_flutter_example/injection.dart';
import 'package:ddd_flutter_example/presentation/app_widget.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

void main() {
  configurationInjection(Environment.dev);
  runApp(AppWidget());
}

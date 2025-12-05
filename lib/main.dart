import 'package:flowvahub/core/di/injection_container.dart';
import 'package:flutter/material.dart';
import 'app.dart';

void main() async {
  // Ensure that Flutter bindings are initialized before any async operations
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize all dependencies
  await InjectionContainer.init();

  // Run the application
  runApp(const MyApp());
}
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:umbrela_cash/core/injector.dart';
import 'package:umbrela_cash/firebase_options.dart';
import 'package:umbrela_cash/src/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  setupGetIt;
  runApp(const App());
}

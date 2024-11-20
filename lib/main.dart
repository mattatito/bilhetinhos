
import 'package:flutter/material.dart';
import 'app_widget.dart';
import 'infra/firebase/firebase_configuration.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FirebaseConfiguration.initFirebase();
  runApp(const AppWidget());
}


import 'package:bilhetinhos/app_routes.dart';
import 'package:flutter/material.dart';
import 'infra/firebase/firebase_configuration.dart';
import 'modules/core-ui/theme/theme.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FirebaseConfiguration.initFirebase();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Bilhetinhos",
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('pt'),
        Locale('en'),
      ],
      theme: const MaterialTheme(TextTheme()).light(),
      routes: AppRoutesBuilder.routes(),
      initialRoute: AppRoutes.loginPage,
    );
  }
}

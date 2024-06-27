import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/applocal.dart';
import 'package:flutter_application_1/test.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: test(),
      localizationsDelegates: const [
        AppLocale.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale("en", ""),
        Locale("ar", ""),
      ],
      //
      locale: Locale("ar", ""),

      //
      localeResolutionCallback: (currentLang, supportedLang) {
        if (currentLang != null) {
          for (Locale locale in supportedLang) {
            if (locale.languageCode == currentLang.languageCode) {
              return currentLang;
            }
          }
        }
        return supportedLang.first;
      },
    );
  }
}

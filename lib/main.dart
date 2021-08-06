import 'package:flutter/material.dart';
import 'package:tourism_app/screens/splash_screen.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tourism app',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "avenir-heavy",
        primarySwatch: CompanyColors.customBrown,
      ),
      home: SplashScreen(),
    );
  }
}

class CompanyColors {
  CompanyColors._();

  static const _blackPrimaryValue = 0xffcc9d76;

  static const MaterialColor customBrown = const MaterialColor(
    _blackPrimaryValue,
    const <int, Color>{
      50: const Color(0xFFe0e0e0),
      100: const Color(0xFFb3b3b3),
      200: const Color(0xFF808080),
      300: const Color(0xFF4d4d4d),
      400: const Color(0xFF262626),
      500: const Color(_blackPrimaryValue),
      600: const Color(0xFF000000),
      700: const Color(0xFF000000),
      800: const Color(0xFF000000),
      900: const Color(0xFF000000),
    },
  );
}

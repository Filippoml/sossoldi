import 'package:flutter/material.dart';
import 'routes.dart';
import 'pages/structure.dart';

import 'constants/style.dart';

void main() {
  runApp(const Launcher());
}

ColorScheme customColorScheme = const ColorScheme(
  primary: blue1,
  secondary: blue5,
  surface: grey3,
  background: white,
  error: red,
  onPrimary: white,
  onSecondary: white,
  onSurface: blue1,
  onBackground: blue1,
  onError: black,
  brightness: Brightness.light,
);

ThemeData customThemeData = ThemeData(
  colorScheme: customColorScheme,
  backgroundColor: white,
  fontFamily: 'SF Pro Text',
  textTheme: const TextTheme(
    // display
    displayLarge: TextStyle(
      fontSize: 34.0,
      fontWeight: FontWeight.w700,
    ),
    displayMedium: TextStyle(
      fontSize: 34.0,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),

    // headline
    headlineLarge: TextStyle(
      fontSize: 24.0,
      fontWeight: FontWeight.w700,
    ),
    headlineMedium: TextStyle(
      fontSize: 24.0,
      fontWeight: FontWeight.w600,
    ),

    // title
    titleLarge: TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.w700,
    ),
    titleMedium: TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
    ),
    titleSmall: TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.w400,
    ),

    // body
    bodyLarge: TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.w700,
    ),
    bodyMedium: TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.w600,
    ),
    bodySmall: TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.w400,
    ),

    // label
    labelLarge: TextStyle(
      fontSize: 10.0,
      fontWeight: FontWeight.w700,
    ),
    labelMedium: TextStyle(
      fontSize: 10.0,
      fontWeight: FontWeight.w400,
    ),
    labelSmall: TextStyle(
      fontSize: 8.0,
      fontWeight: FontWeight.w700,
    ),
  ),
);

class Launcher extends StatelessWidget {
  const Launcher({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sossoldi',
      theme: customThemeData,
      onGenerateRoute: makeRoute,
      initialRoute: '/',
    );
  }
}

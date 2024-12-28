import 'package:flutter/material.dart';
import 'package:udemy_practice3/widgets/expenses.dart';

void main() {
  var xcolorScheme =
      ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 96, 59, 181));

  var kColorScheme = ColorScheme.fromSeed(
      brightness: Brightness.dark,
      seedColor: const Color.fromARGB(255, 5, 9, 125));

  runApp(MaterialApp(
    darkTheme: ThemeData.dark().copyWith(
      colorScheme: kColorScheme,
      // appBarTheme: AppBarTheme(
      //     backgroundColor: kColorScheme.onPrimaryContainer,
      //     foregroundColor: kColorScheme.primaryContainer),
      cardTheme: const CardTheme().copyWith(
        color: kColorScheme.secondaryContainer,
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        elevation: 5,
        shadowColor: kColorScheme.onPrimaryContainer,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: kColorScheme.primaryContainer,
          foregroundColor: kColorScheme.onPrimaryContainer,
        ),
      ),
      textTheme: ThemeData().textTheme.copyWith(
            titleLarge: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.normal,
              color: kColorScheme.onSecondaryContainer,
            ),
          ),
    ),
    theme: ThemeData().copyWith(
      colorScheme: xcolorScheme,
      appBarTheme: AppBarTheme(
          backgroundColor: xcolorScheme.onPrimaryContainer,
          foregroundColor: xcolorScheme.primaryContainer),
      cardTheme: const CardTheme().copyWith(
        color: xcolorScheme.secondaryContainer,
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        elevation: 5,
        shadowColor: xcolorScheme.onPrimaryContainer,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: xcolorScheme.primaryContainer,
        ),
      ),
      textTheme: ThemeData().textTheme.copyWith(
            titleLarge: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.normal,
              color: xcolorScheme.onSecondaryContainer,
            ),
          ),
    ),
    // themeMode: ThemeMode.dark,
    home: const ExpenseTracker(),
  ));
}

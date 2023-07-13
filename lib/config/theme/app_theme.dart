import 'package:flutter/material.dart';

class AppTheme {
  static const seedColor = Colors.orangeAccent;
  ThemeData getTheme() => ThemeData(
        useMaterial3: true,
        colorSchemeSeed: seedColor,
        listTileTheme: const ListTileThemeData(
          iconColor: seedColor,
        ),
      );
}

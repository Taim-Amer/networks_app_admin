import 'package:flutter/material.dart';
import 'package:networks_app_admin/utils/constants/colors.dart';

class TTextButtonTheme {
  TTextButtonTheme._();

  static final lightTextButtonTheme = TextButtonThemeData(
    style: TextButton.styleFrom(
      foregroundColor: TColors.primary,
      backgroundColor: Colors.transparent,
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      splashFactory: NoSplash.splashFactory,
        surfaceTintColor: Colors.transparent
    ),
  );

  static final darkTextButtonTheme = TextButtonThemeData(
    style: TextButton.styleFrom(
      foregroundColor: TColors.primary,
      backgroundColor: Colors.transparent,
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      splashFactory: NoSplash.splashFactory,
      surfaceTintColor: Colors.transparent
    ),
  );
}

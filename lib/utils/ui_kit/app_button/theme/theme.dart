// ignore_for_file: non_constant_identifier_names

import 'package:effective_test/theme/theme.dart';
import 'package:flutter/material.dart';

final class AppButtonThemeText {
  TextStyle get appButtonTextStyle => AppTextStyles.buttonText1.copyWith(
        color: Colors.white,
        fontStyle: FontStyle.italic,
      );
}

final _text = AppButtonThemeText();

class AppButtonTheme {
  AppButtonThemeText get text => _text;
}

extension AppButtonStandartTheme on StandartTheme {
  AppButtonTheme get AppButton => AppButtonTheme();
}

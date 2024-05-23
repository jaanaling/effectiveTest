// ignore_for_file: non_constant_identifier_names

import 'package:effective_test/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

final class RoutesTextFieldsThemeText {
  TextStyle get textFieldTextStyle => AppTextStyles.buttonText1.copyWith(
        color: AppColors.white,
      );
  TextStyle get textFieldHintStyle => AppTextStyles.buttonText1.copyWith(
        color: AppColors.gray6,
      );
}

final _text = RoutesTextFieldsThemeText();

final class RoutesTextFieldsThemeColors {
  Color get shadowColor => AppColors.black.withOpacity(0.4);
  Color get separatorColorFirstType => AppColors.gray5;
  Color get separatorColorSecondType => AppColors.gray4;
  Color get containerColorFirstType => AppColors.gray4;
  Color get containerColorSecondType => AppColors.gray2;
  Color get prefixIconTextFieldFromColor => AppColors.gray6;
  Color get prefixIconTextFieldToColor => AppColors.white;
  Color get suffixIconTextFieldFromColor => AppColors.white;
  Color get suffixIconTextFieldToColor => AppColors.gray7;
}

final _colors = RoutesTextFieldsThemeColors();

class RoutesTextFieldsTheme {
  RoutesTextFieldsThemeColors get color => _colors;
  RoutesTextFieldsThemeText get text => _text;
}

extension RoutesTextFieldsStandartTheme on StandartTheme {
  RoutesTextFieldsTheme get RoutesTextFields => RoutesTextFieldsTheme();
}

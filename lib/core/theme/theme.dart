// ignore_for_file: non_constant_identifier_names

import 'package:effective_test/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

final class CoreThemeText {
  TextStyle get tabUnselectTextStyle => AppTextStyles.tabText.copyWith(
        color: AppColors.gray6,
      );
  TextStyle get tabSelectTextStyle => AppTextStyles.tabText.copyWith(
        color: AppColors.blue,
      );
}

final _text = CoreThemeText();

final class CoreThemeColors {
  Color get scaffoldColor => AppColors.black;
  Color get bottomBarColor => AppColors.black;
  Color get bottomBarSepareteColor => AppColors.gray1;
  Color get tabUnselectIconStyle => AppColors.gray6;
  Color get tabSelectIconStyle => AppColors.blue;
}

final _colors = CoreThemeColors();

class CoreTheme {
  CoreThemeColors get color => _colors;
  CoreThemeText get text => _text;
}

extension CoreStandartTheme on StandartTheme {
  CoreTheme get Core => CoreTheme();
}

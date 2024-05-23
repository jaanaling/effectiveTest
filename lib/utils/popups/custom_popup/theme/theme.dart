// ignore_for_file: non_constant_identifier_names

import 'package:effective_test/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

final class CustomPopupThemeColors {
  Color get backgroundColor => AppColors.gray3;
  Color get handleColor => AppColors.gray5;
}

final _colors = CustomPopupThemeColors();

class CustomPopupTheme {
  CustomPopupThemeColors get color => _colors;
}

extension CustomPopupStandartTheme on StandartTheme {
  CustomPopupTheme get CustomPopup => CustomPopupTheme();
}

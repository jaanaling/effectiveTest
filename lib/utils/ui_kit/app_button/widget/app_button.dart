import 'package:effective_test/theme/theme.dart';
import 'package:effective_test/utils/ui_kit/app_button/theme/theme.dart';
import 'package:flutter/material.dart';

var _feature = StandartTheme().AppButton;

class AppButton extends StatelessWidget {
  final String label;
  final Color color;
  final VoidCallback onTap;
  final TextStyle? style;

  const AppButton({
    super.key,
    required this.label,
    required this.color,
    required this.onTap,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(
          vertical: 11,
        ),
        margin: const EdgeInsets.symmetric(
          vertical: 16,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: color,
        ),
        child: Center(
          child: Text(
            label,
            style: style ?? _feature.text.appButtonTextStyle,
          ),
        ),
      ),
    );
  }
}

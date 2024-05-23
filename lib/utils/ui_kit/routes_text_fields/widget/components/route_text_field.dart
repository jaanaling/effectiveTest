import 'package:effective_test/theme/theme.dart';
import 'package:effective_test/utils/ui_kit/routes_text_fields/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

var _feature = StandartTheme().RoutesTextFields;

class RouteTextField extends StatelessWidget {
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final TextEditingController controller;
  final String hintText;
  final TextInputType? keyboardType;
  final Function()? onTap;

  const RouteTextField({
    super.key,
    required this.controller,
    required this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.onTap,
    this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      style: _feature.text.textFieldTextStyle,
      onTap: onTap,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        isDense: true,
        hintText: hintText,
        hintStyle: _feature.text.textFieldHintStyle,
        prefixIcon: prefixIcon != null
            ? Padding(
                padding: const EdgeInsets.only(right: 8),
                child: prefixIcon,
              )
            : null,
        prefixIconConstraints: const BoxConstraints(
          maxHeight: 24,
          minWidth: 24,
        ),
        suffixIcon: suffixIcon,
        suffixIconConstraints: const BoxConstraints(
          maxHeight: 24,
          minWidth: 24,
        ),
        border: InputBorder.none,
        focusedBorder: InputBorder.none,
        enabledBorder: InputBorder.none,
        errorBorder: InputBorder.none,
        disabledBorder: InputBorder.none,
        contentPadding: EdgeInsets.zero,
      ),
      inputFormatters: [
        FilteringTextInputFormatter.allow(RegExp('[а-яА-ЯёЁ]')),
      ],
    );
  }
}

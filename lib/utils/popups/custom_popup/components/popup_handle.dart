import 'package:effective_test/theme/theme.dart';
import 'package:effective_test/utils/popups/custom_popup/theme/theme.dart';
import 'package:flutter/material.dart';

var _feature = StandartTheme().CustomPopup;

class PopupHandle extends StatelessWidget {
  const PopupHandle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 5,
      margin: const EdgeInsets.fromLTRB(161.0, 16.0, 161.0, 12.0),
      decoration: BoxDecoration(
        color: _feature.color.handleColor,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}

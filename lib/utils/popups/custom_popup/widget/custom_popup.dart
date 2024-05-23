import 'package:effective_test/theme/theme.dart';
import 'package:effective_test/utils/popups/custom_popup/components/popup_handle.dart';
import 'package:effective_test/utils/popups/custom_popup/theme/theme.dart';
import 'package:flutter/material.dart';

var _feature = StandartTheme().CustomPopup;

class CustomPopup extends StatelessWidget {
  final Widget body;

  const CustomPopup({
    super.key,
    required this.body,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: _feature.color.backgroundColor,
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(16.0),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 34),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const PopupHandle(),
              body,
            ],
          ),
        ),
      ),
    );
  }
}

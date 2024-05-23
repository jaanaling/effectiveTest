import 'package:effective_test/utils/popups/custom_popup/widget/custom_popup.dart';
import 'package:flutter/material.dart';

Future<Object?> showCustomPopup({
  required BuildContext context,
  required Widget body,
  Key? key,
}) async {
  final result = await showModalBottomSheet(
    useSafeArea: true,
    barrierColor: Colors.transparent,
    clipBehavior: Clip.hardEdge,
    isDismissible: true,
    isScrollControlled: true,
    useRootNavigator: true,
    context: context,
    builder: (context) => CustomPopup(
      key: key,
      body: body,
    ),
  );
  return result;
}

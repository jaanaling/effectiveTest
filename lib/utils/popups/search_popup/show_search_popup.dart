// ignore_for_file: use_setters_to_change_properties

import 'package:effective_test/utils/popups/custom_popup/show_custom_popup.dart';
import 'package:effective_test/utils/popups/search_popup/widget/search_popup.dart';
import 'package:flutter/widgets.dart';

class SearchPopupUtil {
  static bool isSearchPopupShowing = false;

  static void searchPopupShowingChange(bool value) {
    isSearchPopupShowing = value;
  }

  static Future<void> showSearchPopup({
    required BuildContext context,
    Key? key,
  }) {
    return showCustomPopup(
      context: context,
      key: key,
      body: const SearchPopup(),
    );
  }
}

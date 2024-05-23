// ignore_for_file: avoid_setters_without_getters

import 'package:effective_test/utils/ui_kit/routes_text_fields/data_provider/get_cache.dart';
import 'package:effective_test/utils/ui_kit/routes_text_fields/data_provider/set_cache.dart';
import 'package:flutter/material.dart';

class GlobalController {
  static TextEditingController fromController = TextEditingController();
  static TextEditingController toController = TextEditingController();

  static TextEditingController getFromController() {
    return fromController;
  }

  static TextEditingController getToController() {
    return toController;
  }

  static String getStringFromController() {
    return fromController.text;
  }

  static String getStringToController() {
    return toController.text;
  }

  static set setTextFromController(String text) {
    fromController.text = text;
  }

  static set setTextToController(String text) {
    toController.text = text;
  }

  static Future<void> init() async {
    fromController.addListener(() {
      setCache('from', fromController.text);
    });
    fromController.text = await getCache('from');
  }
}

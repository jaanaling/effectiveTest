import 'package:easy_localization/easy_localization.dart';
import 'package:effective_test/core/config/core.dart';
import 'package:effective_test/generated/translations/codegen_loader.g.dart';
import 'package:effective_test/utils/ext/global_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  GlobalController.init();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(
    EasyLocalization(
      path: 'assets/translations',
      supportedLocales: const [Locale('ru')],
      startLocale: const Locale('ru'),
      fallbackLocale: const Locale('ru'),
      assetLoader: const CodegenLoader(),
      useOnlyLangCode: true,
      child: const Core(),
    ),
  );
}

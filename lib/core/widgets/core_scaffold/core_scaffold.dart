import 'package:effective_test/core/theme/theme.dart';
import 'package:effective_test/core/widgets/core_bottom_navigation/core_bottom_navigation.dart';
import 'package:effective_test/router/routes.dart';
import 'package:effective_test/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

var _feature = StandartTheme().Core;

class CoreScaffold extends StatelessWidget {
  final Widget? body;

  const CoreScaffold({
    super.key,
    this.body,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GoRouterState.of(context).fullPath == Routes.unknown.route
          ? AppBar(
              title: const Text('Unknown Screen'),
            )
          : null,
      backgroundColor: _feature.color.scaffoldColor,
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: const CoreBottomNavigation(),
      body: SafeArea(child: body ?? Container()),
    );
  }
}

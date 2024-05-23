import 'package:effective_test/theme/theme.dart';
import 'package:flutter/material.dart';

class CoreBody extends StatelessWidget {
  final Widget child;

  const CoreBody({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: AppColors.black),
      child: child,
    );
  }
}

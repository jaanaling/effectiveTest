import 'package:effective_test/features/all_tickets/theme/theme.dart';
import 'package:effective_test/theme/theme.dart';
import 'package:flutter/material.dart';

var _feature = StandartTheme().AllTickets;

class CardBadge extends StatelessWidget {
  final String badge;

  const CardBadge({
    super.key,
    required this.badge,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: -8,
      left: 0,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: _feature.color.badgeColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 10),
          child: Text(
            badge,
            style: _feature.text.badgeDetailsTextStyle,
          ),
        ),
      ),
    );
  }
}

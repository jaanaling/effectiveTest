import 'package:effective_test/features/all_tickets/theme/theme.dart';
import 'package:effective_test/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

var _feature = StandartTheme().AllTickets;

class NavigationPanelItem extends StatelessWidget {
  final String iconUrl;
  final String label;

  const NavigationPanelItem({
    super.key,
    required this.iconUrl,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          iconUrl,
        ),
        const Gap(4),
        Text(
          label,
          style: _feature.text.navigationPanelTextStyle,
        ),
      ],
    );
  }
}

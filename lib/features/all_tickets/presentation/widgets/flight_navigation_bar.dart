import 'package:effective_test/features/all_tickets/theme/theme.dart';
import 'package:effective_test/utils/ext/global_controller.dart';
import 'package:effective_test/utils/ext/icon_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:effective_test/theme/theme.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

var _feature = StandartTheme().AllTickets;

class FlightNavigationBar extends StatelessWidget {
  final String date;

  const FlightNavigationBar({
    super.key,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8),
      margin: const EdgeInsets.only(top: 16),
      color: _feature.color.navigationBarColor,
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              context.pop();
            },
            child: SvgPicture.asset(
              IconProvider.leftArrow.buildIconUrl(),
              colorFilter: ColorFilter.mode(
                _feature.color.backArrowColor,
                BlendMode.srcIn,
              ),
            ),
          ),
          const Gap(8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${GlobalController.fromController.text}-${GlobalController.toController.text}',
                style: _feature.text.routeTextStyle,
              ),
              const Gap(4),
              Text(
                date,
                style: _feature.text.dateTextStyle,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

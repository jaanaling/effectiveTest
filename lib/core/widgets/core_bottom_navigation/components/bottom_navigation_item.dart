import 'package:effective_test/core/theme/theme.dart';
import 'package:effective_test/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

var _feature = StandartTheme().Core;

class BottomNavigationItem extends StatelessWidget {
  final void Function() onPressed;
  final bool isSelected;
  final String icon;
  final String label;

  const BottomNavigationItem({
    super.key,
    required this.isSelected,
    required this.icon,
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Column(
        children: [
          SvgPicture.asset(
            icon,
            fit: BoxFit.fill,
            colorFilter: ColorFilter.mode(
              isSelected
                  ? _feature.color.tabSelectIconStyle
                  : _feature.color.tabUnselectIconStyle,
              BlendMode.srcIn,
            ),
          ),
          const Gap(3),
          Text(
            label,
            style: isSelected
                ? _feature.text.tabSelectTextStyle
                : _feature.text.tabUnselectTextStyle,
          ),
        ],
      ),
    );
  }
}

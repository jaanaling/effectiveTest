import 'package:effective_test/features/selected_country/theme/theme.dart';
import 'package:effective_test/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

var _feature = StandartTheme().SelectedCountry;

class ChipsComponent extends StatelessWidget {
  final String title;
  final String? subtitle;
  final String? icon;
  final Color? iconColor;
  final VoidCallback onTap;

  const ChipsComponent({
    super.key,
    required this.onTap,
    required this.title,
    this.subtitle,
    this.icon,
    this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        decoration: BoxDecoration(
          color: _feature.color.chipContainerColor,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Row(
          children: [
            if (icon != null)
              SvgPicture.asset(
                icon!,
                colorFilter: ColorFilter.mode(
                  iconColor!,
                  BlendMode.srcIn,
                ),
              ),
            if (icon != null) const Gap(8),
            RichText(
              text: TextSpan(
                text: title,
                style: _feature.text.chipTitleTextStyle,
                children: [
                  TextSpan(
                    text: subtitle,
                    style: _feature.text.chipSubtitleTextStyle,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

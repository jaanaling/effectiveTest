import 'package:effective_test/features/selected_country/theme/theme.dart';
import 'package:effective_test/theme/theme.dart';
import 'package:effective_test/utils/ext/icon_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

var _feature = StandartTheme().SelectedCountry;

class DirectFlightComponent extends StatelessWidget {
  final Color color;
  final String title;
  final String timeRange;
  final String price;

  const DirectFlightComponent({
    super.key,
    required this.color,
    required this.title,
    required this.timeRange,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 10, top: 16),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 24,
                height: 24,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: color,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              const Gap(8),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(title, style: _feature.text.routesTitleTextStyle),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              '$price ₽ ',
                              style: _feature.text.routesPriceTextStyle,
                            ),
                            SvgPicture.asset(
                              IconProvider.rightArrow.buildIconUrl(),
                              colorFilter: ColorFilter.mode(
                                _feature.color.arrowIconColor,
                                BlendMode.srcIn,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const Gap(4),
                    Text(
                      timeRange,
                      style: _feature.text.routesTimeTextStyle,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Divider(
          color: _feature.color.dividerColor,
          height: 0,
          indent: 0,
          thickness: 1,
        ),
      ],
    );
  }
}

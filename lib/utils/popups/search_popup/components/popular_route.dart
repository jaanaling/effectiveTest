import 'package:easy_localization/easy_localization.dart';
import 'package:effective_test/generated/translations/locale_keys.g.dart';
import 'package:effective_test/theme/theme.dart';
import 'package:effective_test/utils/ext/images_provider.dart';
import 'package:effective_test/utils/popups/search_popup/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

var _feature = StandartTheme().Search;

class PopularRoute extends StatelessWidget {
  final String image;
  final String title;
  final VoidCallback onTap;

  const PopularRoute({
    super.key,
    required this.image,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  image,
                  width: 40,
                  height: 40,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) => Image.asset(
                    ImagesProvider.unknown.buildImageUrl(),
                    fit: BoxFit.cover,
                    width: 40,
                    height: 40,
                  ),
                ),
              ),
              const Gap(8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: _feature.text.popularRoutesTitleTextStyle,
                  ),
                  const Gap(4),
                  Text(
                    LocaleKeys.popular_route.tr(),
                    style: _feature.text.popularRoutesSubTitleTextStyle,
                  ),
                ],
              ),
            ],
          ),
        ),
        const Gap(8),
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

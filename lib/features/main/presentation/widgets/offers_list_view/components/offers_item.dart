import 'package:easy_localization/easy_localization.dart';
import 'package:effective_test/features/main/theme/theme.dart';
import 'package:effective_test/generated/translations/locale_keys.g.dart';
import 'package:effective_test/theme/theme.dart';
import 'package:effective_test/utils/ext/icon_provider.dart';
import 'package:effective_test/utils/ext/images_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

var _feature = StandartTheme().Main;

class OffersItem extends StatelessWidget {
  final int id;
  final String title;
  final String town;
  final String price;

  const OffersItem({
    super.key,
    required this.id,
    required this.title,
    required this.town,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(16.0),
          child: Image.asset(
            ImagesProvider.buildOffersImageUrl(id),
            height: 132,
            width: 133,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) {
              return Image.asset(
                ImagesProvider.unknown.buildImageUrl(),
                fit: BoxFit.cover,
              );
            },
          ),
        ),
        const Gap(8),
        Text(title, style: _feature.text.musicallyTitleTextStyle),
        const Gap(8),
        Text(town, style: _feature.text.musicallySubtitleTextStyle),
        const Gap(4),
        Row(
          children: [
            SvgPicture.asset(
              IconProvider.airTickets.buildIconUrl(),
              colorFilter: ColorFilter.mode(
                _feature.color.leadingIconMusicallyColor,
                BlendMode.srcIn,
              ),
            ),
            Text(
              LocaleKeys.cost.tr(args: [price]),
              style: _feature.text.musicallySubtitleTextStyle,
            ),
          ],
        ),
      ],
    );
  }
}

import 'package:effective_test/theme/theme.dart';
import 'package:effective_test/utils/popups/search_popup/theme/theme.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

var _feature = StandartTheme().Search;

class HotTab extends StatelessWidget {
  final String icon;
  final Color color;
  final String text;
  final VoidCallback onTap;

  const HotTab({
    super.key,
    required this.icon,
    required this.color,
    required this.onTap,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.18,
        child: Column(
          children: [
            DecoratedBox(
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: SvgPicture.asset(
                  icon,
                  colorFilter: ColorFilter.mode(
                    _feature.color.hotTabIconColor,
                    BlendMode.srcIn,
                  ),
                ),
              ),
            ),
            const Gap(8),
            SizedBox(
              child: Text(
                text,
                style: _feature.text.hotTabTextStyle,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

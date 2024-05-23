import 'package:effective_test/features/main/presentation/widgets/main_loader/components/load_image.dart';
import 'package:effective_test/features/main/presentation/widgets/main_loader/components/load_subtitle.dart';
import 'package:effective_test/features/main/presentation/widgets/main_loader/components/load_title.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class MainLoader extends StatelessWidget {
  const MainLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LoadImage(),
            Gap(8),
            LoadTitle(),
            Gap(8),
            LoadSubtitle(),
          ],
        ),
        Gap(60),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LoadImage(),
            Gap(8),
            LoadTitle(),
            Gap(8),
            LoadSubtitle(),
          ],
        ),
      ],
    );
  }
}

import 'package:effective_test/features/main/theme/theme.dart';
import 'package:effective_test/theme/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:shimmer/shimmer.dart';

var _feature = StandartTheme().Main;

class LoadImage extends StatelessWidget {
  const LoadImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      period: const Duration(milliseconds: 1000),
      baseColor: _feature.color.loaderBackgroungColor,
      highlightColor: _feature.color.loaderShimmerColor,
      child: Container(
        height: 132,
        width: 132,
        decoration: BoxDecoration(
          color: _feature.color.loaderBackgroungColor,
          borderRadius: const BorderRadius.all(
            Radius.circular(16),
          ),
        ),
      ),
    );
  }
}

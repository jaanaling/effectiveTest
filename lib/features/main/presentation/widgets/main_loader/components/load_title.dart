import 'package:effective_test/features/main/theme/theme.dart';
import 'package:effective_test/theme/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:shimmer/shimmer.dart';

var _feature = StandartTheme().Main;

class LoadTitle extends StatelessWidget {
  const LoadTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      period: const Duration(milliseconds: 1000),
      baseColor: _feature.color.loaderBackgroungColor,
      highlightColor: _feature.color.loaderShimmerColor,
      child: Container(
        height: 20,
        width: 100,
        decoration: BoxDecoration(
          color: _feature.color.loaderBackgroungColor,
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
        ),
      ),
    );
  }
}

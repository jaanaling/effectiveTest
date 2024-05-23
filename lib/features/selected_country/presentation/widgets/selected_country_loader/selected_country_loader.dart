import 'package:effective_test/features/selected_country/theme/theme.dart';
import 'package:effective_test/theme/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:shimmer/shimmer.dart';


var _feature = StandartTheme().SelectedCountry;

class SelectedCountryLoader extends StatelessWidget {
  const SelectedCountryLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return  Shimmer.fromColors(
      period: const Duration(milliseconds: 1000),
      baseColor: _feature.color.loaderBackgroungColor,
      highlightColor: _feature.color.loaderShimmerColor,
      child: Container(
        height: 280,
        width: double.infinity,
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

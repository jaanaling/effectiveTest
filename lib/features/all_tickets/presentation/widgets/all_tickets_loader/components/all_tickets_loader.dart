import 'package:effective_test/features/all_tickets/theme/theme.dart';
import 'package:effective_test/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

var _feature = StandartTheme().AllTickets;

class AllTicketsLoaderItem extends StatelessWidget {
  const AllTicketsLoaderItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      period: const Duration(milliseconds: 1000),
      baseColor: _feature.color.loaderBackgroungColor,
      highlightColor: _feature.color.loaderShimmerColor,
      child: Container(
        height: 120,
        width: double.infinity,
        decoration: BoxDecoration(
          color: _feature.color.loaderBackgroungColor,
          borderRadius: const BorderRadius.all(
            Radius.circular(8),
          ),
        ),
      ),
    );
  }
}

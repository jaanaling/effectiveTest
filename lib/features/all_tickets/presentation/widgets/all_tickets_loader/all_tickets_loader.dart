import 'package:effective_test/features/all_tickets/presentation/widgets/all_tickets_loader/components/all_tickets_loader.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AllTicketsLoader extends StatelessWidget {
  const AllTicketsLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        AllTicketsLoaderItem(),
        Gap(16),
        AllTicketsLoaderItem(),
        Gap(16),
        AllTicketsLoaderItem(),
        Gap(16),
        AllTicketsLoaderItem(),
        Gap(16),
        AllTicketsLoaderItem(),
        Gap(16),
      ],
    );
  }
}

import 'package:effective_test/features/all_tickets/presentation/widgets/ticket_card/ticket_card.dart';
import 'package:flutter/material.dart';
import 'package:effective_test/features/all_tickets/models/ticket_model.dart';
import 'package:gap/gap.dart';

class AllTicketsList extends StatelessWidget {
  final List<TicketModel> tickets;

  const AllTicketsList({super.key, required this.tickets});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      separatorBuilder: (context, index) => const Gap(16),
      itemCount: tickets.length,
      itemBuilder: (context, index) => TicketCard(
        ticketModel: tickets[index],
      ),
    );
  }
}

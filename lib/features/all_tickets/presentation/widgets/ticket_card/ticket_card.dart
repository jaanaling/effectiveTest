import 'package:effective_test/features/all_tickets/presentation/widgets/ticket_card/components/card_badge.dart';
import 'package:effective_test/features/all_tickets/presentation/widgets/ticket_card/components/flight_details.dart';
import 'package:effective_test/features/all_tickets/presentation/widgets/ticket_card/components/time_info.dart';
import 'package:effective_test/features/all_tickets/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:effective_test/theme/theme.dart';
import 'package:effective_test/features/all_tickets/models/ticket_model.dart';

var _feature = StandartTheme().AllTickets;

class TicketCard extends StatelessWidget {
  final TicketModel ticketModel;
  const TicketCard({super.key, required this.ticketModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: ticketModel.badge != null ? 8 : 0),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          DecoratedBox(
            decoration: BoxDecoration(
              color: _feature.color.cardColor,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                top: 16,
                left: 16,
                right: 4,
                bottom: 23,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${ticketModel.price.value} ₽',
                    style: _feature.text.titleTextStyle,
                  ),
                  const Gap(16),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 24,
                            height: 24,
                            decoration: BoxDecoration(
                              color: _feature.color.cardCircleColor,
                              shape: BoxShape.circle,
                            ),
                          ),
                          const Gap(8),
                          TimeInfo(
                            airport: ticketModel.departure.airport,
                            date: ticketModel.departure.date,
                          ),
                          const Gap(2),
                          SizedBox(
                            width: 10,
                            child: Divider(
                              height: 0,
                              indent: 0,
                              thickness: 1,
                              color: _feature.color.dividerColor,
                            ),
                          ),
                          const Gap(9),
                          TimeInfo(
                            airport: ticketModel.arrival.airport,
                            date: ticketModel.arrival.date,
                          ),
                        ],
                      ),
                      const Gap(16),
                      FlightDetails(
                        departureTime: ticketModel.departure.date,
                        arrivalTime: ticketModel.arrival.date,
                        hasTransfer: ticketModel.hasTransfer,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          if (ticketModel.badge != null)
            CardBadge(
              badge: ticketModel.badge ?? '',
            ),
        ],
      ),
    );
  }
}

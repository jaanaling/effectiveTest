import 'package:effective_test/features/all_tickets/bloc/all_tickets_bloc/all_tickets_bloc.dart';
import 'package:effective_test/features/all_tickets/presentation/widgets/all_tickets_list.dart';
import 'package:effective_test/features/all_tickets/presentation/widgets/all_tickets_loader/all_tickets_loader.dart';
import 'package:effective_test/features/all_tickets/presentation/widgets/flight_navigation_bar.dart';
import 'package:effective_test/features/all_tickets/presentation/widgets/navigation_panel/navigation_panel.dart';
import 'package:effective_test/features/all_tickets/theme/theme.dart';
import 'package:effective_test/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

var _feature = StandartTheme().AllTickets;

class AllTicketsScreen extends StatelessWidget {
  final String date;

  const AllTicketsScreen({super.key, required this.date});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _feature.color.scaffoldColor,
      bottomSheet: const NavigationPanel(),
      body: BlocProvider(
        create: (context) => AllTicketsBloc()..add(GetTicketsEvent()),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                FlightNavigationBar(
                  date: date,
                ),
                const Gap(34),
                BlocBuilder<AllTicketsBloc, AllTicketsState>(
                  builder: (context, state) {
                    return state is GetTicketsState
                        ? AllTicketsList(
                            tickets: state.tickets,
                          )
                        : const AllTicketsLoader();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

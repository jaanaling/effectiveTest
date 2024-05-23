import 'package:effective_test/features/selected_country/data_provider/get_tickets_offers.dart';
import 'package:effective_test/features/selected_country/model/tickets_offers_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/foundation.dart';

part 'selected_country_event.dart';
part 'selected_country_state.dart';

class SelectedCountryBloc
    extends Bloc<SelectedCountryEvent, SelectedCountryState> {
  SelectedCountryBloc() : super(SelectedCountryInitial()) {
    on<GetTicketOffersEvent>((event, emit) async {
      emit(
        GetTicketOffersState(
          ticketOffers: await getTicketOffers(),
        ),
      );
    });
  }
}

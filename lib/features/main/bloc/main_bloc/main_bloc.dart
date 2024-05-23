import 'package:effective_test/features/main/data_provider/get_offers.dart';
import 'package:effective_test/features/main/models/offers_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/foundation.dart';

part 'main_event.dart';
part 'main_state.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  MainBloc() : super(MainInitial()) {
    on<GetOffersEvent>((event, emit) async {
      emit(
        GetOffersState(
          offers: await getOffers(),
          // offers: getMockOffers(),
        ),
      );
    });
  }
}

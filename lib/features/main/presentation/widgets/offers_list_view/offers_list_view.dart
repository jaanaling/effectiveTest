import 'package:effective_test/features/main/models/offers_model.dart';
import 'package:effective_test/features/main/presentation/widgets/offers_list_view/components/offers_item.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class OffersListView extends StatelessWidget {
  final List<OffersModel> offers;

  const OffersListView({
    super.key,
    required this.offers,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 213,
      child: ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: offers.length,
        separatorBuilder: (context, index) => const Gap(67),
        itemBuilder: (context, index) => OffersItem(
          id: offers[index].id,
          title: offers[index].title,
          town: offers[index].town,
          price: offers[index].price.value,
        ),
      ),
    );
  }
}

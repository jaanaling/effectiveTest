import 'package:flutter/material.dart';

Future<DateTime?> showSelectDatePicker(BuildContext context) async {
  final DateTime? picked = await showDatePicker(
    context: context,
    initialDate: DateTime.now(),
    firstDate: DateTime(DateTime.now().year),
    lastDate: DateTime(2100),
  );
  return picked;
}

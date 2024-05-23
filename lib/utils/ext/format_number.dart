String formatNumber(int number) {
  String formattedNumber = '';
  int count = 0;
  
  for (int i = number.toString().length - 1; i >= 0; i--) {
    formattedNumber = number.toString()[i] + formattedNumber;
    count++;
    if (count == 3 && i != 0) {
      formattedNumber = ' $formattedNumber';
      count = 0;
    }
  }
  return formattedNumber;
}

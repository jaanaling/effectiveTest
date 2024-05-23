List<String> splitDate(String date) {
  final int commaIndex = date.indexOf(',');
  if (commaIndex == -1) {
    return [date, ''];
  }
  final String firstPart = date.substring(0, commaIndex).trim();
  final String secondPart = date.substring(commaIndex).trim();
  return [firstPart, secondPart];
}

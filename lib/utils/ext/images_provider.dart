const String imageFolderPath = 'assets/images/png';

enum ImagesProvider {
  phuket(imageName: 'phuket.png'),
  sochy(imageName: 'sochy.png'),
  stambul(imageName: 'stambul.png'),
  unknown(imageName: 'unknown.png');

  const ImagesProvider({
    required this.imageName,
  });

  final String imageName;

  String buildImageUrl() {
    return '$imageFolderPath/$imageName';
  }

  static String buildOffersImageUrl(int id) {
    return '$imageFolderPath/$id.png';
  }
}

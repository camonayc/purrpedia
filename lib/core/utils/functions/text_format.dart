class TextFormat {
  TextFormat._internal();

  static String getFirstQuality(String? qualities) {
    if (qualities == null || qualities.isEmpty) {
      return '';
    }

    List<String> qualityList = qualities.split(',');

    if (qualityList.length > 1) {
      return '${qualityList[0]}, ${qualityList[1]}';
    } else {
      return qualityList[0].trim();
    }
  }
}

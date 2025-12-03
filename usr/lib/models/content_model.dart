class LearningItem {
  final String arabicText;
  final String englishTranslation;
  final String pronunciation; // Transliteration
  final String? example;

  const LearningItem({
    required this.arabicText,
    required this.englishTranslation,
    required this.pronunciation,
    this.example,
  });
}

class Category {
  final String title;
  final String iconEmoji;
  final String route;
  final List<LearningItem> items;

  const Category({
    required this.title,
    required this.iconEmoji,
    required this.route,
    required this.items,
  });
}

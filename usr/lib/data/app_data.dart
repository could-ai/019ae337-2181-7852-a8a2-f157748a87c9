import '../models/content_model.dart';

class AppData {
  static const List<LearningItem> alphabet = [
    LearningItem(arabicText: 'أ', englishTranslation: 'Alif', pronunciation: 'aa'),
    LearningItem(arabicText: 'ب', englishTranslation: 'Baa', pronunciation: 'ba'),
    LearningItem(arabicText: 'ت', englishTranslation: 'Taa', pronunciation: 'ta'),
    LearningItem(arabicText: 'ث', englishTranslation: 'Thaa', pronunciation: 'tha'),
    LearningItem(arabicText: 'ج', englishTranslation: 'Jeem', pronunciation: 'ja'),
    LearningItem(arabicText: 'ح', englishTranslation: 'Haa', pronunciation: 'ha'),
    LearningItem(arabicText: 'خ', englishTranslation: 'Khaa', pronunciation: 'kha'),
    LearningItem(arabicText: 'د', englishTranslation: 'Daal', pronunciation: 'da'),
    LearningItem(arabicText: 'ذ', englishTranslation: 'Thaal', pronunciation: 'tha'),
    LearningItem(arabicText: 'ر', englishTranslation: 'Raa', pronunciation: 'ra'),
    LearningItem(arabicText: 'ز', englishTranslation: 'Zaay', pronunciation: 'za'),
    LearningItem(arabicText: 'س', englishTranslation: 'Seen', pronunciation: 'sa'),
    LearningItem(arabicText: 'ش', englishTranslation: 'Sheen', pronunciation: 'sha'),
  ];

  static const List<LearningItem> numbers = [
    LearningItem(arabicText: '١', englishTranslation: 'One', pronunciation: 'Wahid'),
    LearningItem(arabicText: '٢', englishTranslation: 'Two', pronunciation: 'Ethnan'),
    LearningItem(arabicText: '٣', englishTranslation: 'Three', pronunciation: 'Thalatha'),
    LearningItem(arabicText: '٤', englishTranslation: 'Four', pronunciation: 'Arba\'a'),
    LearningItem(arabicText: '٥', englishTranslation: 'Five', pronunciation: 'Khamsa'),
    LearningItem(arabicText: '٦', englishTranslation: 'Six', pronunciation: 'Sitta'),
    LearningItem(arabicText: '٧', englishTranslation: 'Seven', pronunciation: 'Sab\'a'),
    LearningItem(arabicText: '٨', englishTranslation: 'Eight', pronunciation: 'Thamaniya'),
    LearningItem(arabicText: '٩', englishTranslation: 'Nine', pronunciation: 'Tis\'a'),
    LearningItem(arabicText: '١٠', englishTranslation: 'Ten', pronunciation: 'Ashara'),
  ];

  static const List<LearningItem> greetings = [
    LearningItem(arabicText: 'مرحباً', englishTranslation: 'Hello', pronunciation: 'Marhaban'),
    LearningItem(arabicText: 'السلام عليكم', englishTranslation: 'Peace be upon you', pronunciation: 'As-salamu alaykum'),
    LearningItem(arabicText: 'كيف حالك؟', englishTranslation: 'How are you?', pronunciation: 'Kayfa haluka?'),
    LearningItem(arabicText: 'شكراً', englishTranslation: 'Thank you', pronunciation: 'Shukran'),
    LearningItem(arabicText: 'مع السلامة', englishTranslation: 'Goodbye', pronunciation: 'Ma\'a as-salama'),
  ];
}

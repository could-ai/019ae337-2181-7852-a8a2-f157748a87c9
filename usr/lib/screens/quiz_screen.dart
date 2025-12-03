import 'package:flutter/material.dart';
import 'dart:math';
import '../models/content_model.dart';
import '../data/app_data.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  late List<LearningItem> _quizItems;
  int _currentIndex = 0;
  int _score = 0;
  bool _isFinished = false;

  @override
  void initState() {
    super.initState();
    // Combine all data for the quiz
    _quizItems = [
      ...AppData.alphabet,
      ...AppData.numbers,
      ...AppData.greetings,
    ]..shuffle();
    
    // Take only 10 questions
    if (_quizItems.length > 10) {
      _quizItems = _quizItems.sublist(0, 10);
    }
  }

  void _answerQuestion(bool isCorrect) {
    if (isCorrect) {
      setState(() {
        _score++;
      });
    }

    if (_currentIndex < _quizItems.length - 1) {
      setState(() {
        _currentIndex++;
      });
    } else {
      setState(() {
        _isFinished = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_isFinished) {
      return Scaffold(
        appBar: AppBar(title: const Text('النتيجة')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.emoji_events, size: 100, color: Colors.amber),
              const SizedBox(height: 20),
              Text(
                'انتهى الاختبار!',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: 10),
              Text(
                'نتيجتك: $_score / ${_quizItems.length}',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('العودة للرئيسية'),
              ),
            ],
          ),
        ),
      );
    }

    final currentItem = _quizItems[_currentIndex];
    // Generate options (1 correct, 3 wrong)
    final allItems = [...AppData.alphabet, ...AppData.numbers, ...AppData.greetings];
    final wrongOptions = allItems
        .where((item) => item.arabicText != currentItem.arabicText)
        .toList()
      ..shuffle();
    
    final options = [currentItem, ...wrongOptions.take(3)]..shuffle();

    return Scaffold(
      appBar: AppBar(
        title: Text('سؤال ${_currentIndex + 1}/${_quizItems.length}'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(30),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primaryContainer,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  const Text(
                    'ما معنى هذا؟',
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    currentItem.arabicText,
                    style: TextStyle(
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.onPrimaryContainer,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
            ...options.map((option) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    textStyle: const TextStyle(fontSize: 18),
                  ),
                  onPressed: () => _answerQuestion(option == currentItem),
                  child: Text(option.englishTranslation),
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'models/personality.dart';
import 'data/questions.dart';
import 'screens/start_screen.dart';
import 'screens/question_screen.dart';
import 'screens/result_screen.dart';

void main() {
  runApp(const PersonalityTestApp());
}

class PersonalityTestApp extends StatefulWidget {
  const PersonalityTestApp({super.key});

  @override
  State<PersonalityTestApp> createState() => _PersonalityTestAppState();
}

class _PersonalityTestAppState extends State<PersonalityTestApp> {
  int _currentQuestionIndex = -1;
  final Map<PersonalityType, int> _scores = {
    PersonalityType.Thinker: 0,
    PersonalityType.Feeler: 0,
    PersonalityType.Planner: 0,
    PersonalityType.Adventurer: 0,
  };

  void _startTest() {
    setState(() {
      _currentQuestionIndex = 0;
      _scores.updateAll((key, value) => 0);
    });
  }

  void _answerQuestion(int selectedIndex) {
    final selectedPersonality =
        questions[_currentQuestionIndex].answers[selectedIndex].personality;
    setState(() {
      _scores[selectedPersonality] = _scores[selectedPersonality]! + 1;
      _currentQuestionIndex++;
    });
  }

  void _restartTest() {
    setState(() {
      _currentQuestionIndex = -1;
    });
  }

  PersonalityType _getResult() {
    return _scores.entries.reduce((a, b) => a.value >= b.value ? a : b).key;
  }

  @override
  Widget build(BuildContext context) {
    Widget screen;

    if (_currentQuestionIndex == -1) {
      screen = StartScreen(onStartTest: _startTest);
    } else if (_currentQuestionIndex < questions.length) {
      screen = QuestionScreen(
        question: questions[_currentQuestionIndex],
        onAnswerSelected: _answerQuestion,
      );
    } else {
      screen = ResultScreen(
        resultPersonality: _getResult(),
        onRestart: _restartTest,
      );
    }

    return MaterialApp(home: Scaffold(body: screen));
  }
}

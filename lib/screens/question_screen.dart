import 'package:flutter/material.dart';
import '../models/question.dart';

class QuestionScreen extends StatelessWidget {
  final Question question;
  final void Function(int selectedIndex) onAnswerSelected;

  const QuestionScreen({
    super.key,
    required this.question,
    required this.onAnswerSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF375A7F),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              question.text,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30),
            ...List.generate(
              question.answers.length,
              (index) => Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 8.0,
                  horizontal: 32.0,
                ),
                child: ElevatedButton(
                  onPressed: () => onAnswerSelected(index),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 15,
                    ),
                  ),
                  child: Text(question.answers[index].text),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

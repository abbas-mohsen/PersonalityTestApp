import 'package:flutter/material.dart';
import '../models/personality.dart';

class ResultScreen extends StatelessWidget {
  final PersonalityType resultPersonality;
  final VoidCallback onRestart;

  const ResultScreen({
    super.key,
    required this.resultPersonality,
    required this.onRestart,
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
              personalityMessages[resultPersonality]!,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: onRestart,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 40,
                  vertical: 15,
                ),
              ),
              child: const Text('Restart Test'),
            ),
          ],
        ),
      ),
    );
  }
}

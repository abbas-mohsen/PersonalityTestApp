import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  final VoidCallback onStartTest;

  const StartScreen({super.key, required this.onStartTest});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF375A7F),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Discover Your\nPersonality Type!',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text('❤️', style: TextStyle(fontSize: 40)),
                    SizedBox(width: 20),
                    Text('📚', style: TextStyle(fontSize: 40)),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text('📅', style: TextStyle(fontSize: 40)),
                    SizedBox(width: 20),
                    Text('🧠', style: TextStyle(fontSize: 40)),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 50),
            ElevatedButton(
              onPressed: onStartTest,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
              ),
              child: const Text('Start Test', style: TextStyle(fontSize: 18)),
            ),
          ],
        ),
      ),
    );
  }
}

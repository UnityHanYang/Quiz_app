import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(124, 244, 67, 54),
          ),
          const SizedBox(height: 80),
          const Text(
            'Flutter를 배워봅시다',
            style: TextStyle(
              color: Colors.amber,
              fontSize: 28,
            ),
          ),
          const SizedBox(height: 50),
          OutlinedButton.icon(
            onPressed: () {
              startQuiz();
            }, 
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.amber,
            ),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text('Start Quiz'),
          )
        ],
      ),
    );
  }
}

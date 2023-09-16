import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/question_summary/question_identifier.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(this.summaryData, {super.key});

  final Map<String, Object> summaryData;

  @override
  Widget build(BuildContext context) {
    final isCorrectAnswer =
        summaryData['user_answer'] == summaryData['correct_answer'];
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuestionIdentifier(
          isCorrectAnswer: isCorrectAnswer,
          questionIndex: summaryData['question_index'] as int,
        ),
        const SizedBox(width: 20),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              summaryData['question'] as String,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              summaryData['user_answer'] as String,
              style: const TextStyle(
                color: Colors.pink,
              ),
            ),
            Text(
              summaryData['correct_answer'] as String,
              style: const TextStyle(
                color: Colors.amberAccent,
              ),
            ),
          ],
        ))
      ],
    );
  }
}

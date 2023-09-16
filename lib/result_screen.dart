import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/question_summary/questions_summary.dart';
import 'package:quiz_app/quiz.dart';
import 'package:quiz_app/start_screen.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.chosenAnswers, required this.onRestart});

  final List<String> chosenAnswers;
  final void Function() onRestart;
  List<Map<String, Object>> get getSummaryData{
    final List<Map<String, Object>> summary = [];

    for(var i = 0; i<chosenAnswers.length; i++){
      summary.add(
        {
          'question_index': i,
          'question' : questions[i].text,
          'correct_answer' : questions[i].answers[0],
          'user_answer' : chosenAnswers[i],
        },
      );
    }
    return summary;
  }
  @override
  Widget build(BuildContext context) {
    //final summaryData = getSummaryData();
    final totalQuestionNum = questions.length;
    final totalCorrectNum = getSummaryData.where((data) =>
      data['user_answer'] == data['correct_answer'],
    ).length;
    
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            '당신은 $totalQuestionNum개의 문제 중 $totalCorrectNum개를 맞혔습니다',
            style: const TextStyle(
              color: Colors.indigoAccent,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          QuestionSummary(getSummaryData),
          const SizedBox(
            height: 30,
          ),
          TextButton.icon(
            onPressed: onRestart,
            style: TextButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            icon: const Icon(Icons.refresh),
            label: const Text('퀴즈 재도전'),
          ),
        ]),
      ),
    );
  }
}

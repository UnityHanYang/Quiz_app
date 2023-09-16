import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quiz_app/data/questions.dart';

class QuestionIdentifier extends StatelessWidget{
  const QuestionIdentifier({
    super.key,
    required this.isCorrectAnswer,
    required this.questionIndex,
    });

    final int questionIndex;
    final bool isCorrectAnswer;

  @override
  Widget build(BuildContext context){
    final questionNumber = questionIndex + 1;
    return Container(
      width: 30,
      height: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isCorrectAnswer ? Colors.lightGreen : Colors.red,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Text(
        questionNumber.toString(),
        style: const TextStyle(
          fontWeight: FontWeight.bold, color: Colors.blueGrey
        ),
      ),
    );
  }
}
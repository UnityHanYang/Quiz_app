import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions.screen.dart';
import 'package:quiz_app/result_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<StatefulWidget> createState() {
    return _QuizState();
  } 
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'start-screen';
  List<String> selectedAnswers = [];

  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }
  void reStartQuiz(){
    setState(() {
      selectedAnswers = [];
      activeScreen = 'question-screen';
    });
  }

  void chooseAnswer(String answer){
    selectedAnswers.add(answer);
    if(selectedAnswers.length == questions.length){
      setState(() {
        activeScreen = 'results-screen';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(switchScreen);
    
    if(activeScreen == 'question-screen'){
      screenWidget = QuestionScreen(onSelectAnswer: chooseAnswer);
    }else if(activeScreen == 'results-screen'){
      screenWidget = ResultScreen(
        chosenAnswers: selectedAnswers,
        onRestart: reStartQuiz,
      );
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(187, 158, 237, 1),
                Color.fromARGB(255, 255, 128, 90)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}

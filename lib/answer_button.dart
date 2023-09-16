import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({
    super.key,
    required this.answerText,
    required this.onClicked,
  });

  final String answerText;
  final void Function() onClicked;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onClicked,
      style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 30,
          ),
          backgroundColor: Colors.cyan,
          foregroundColor: Colors.amber,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusDirectional.circular(40),
          )),
      child: Text(
        answerText,
        textAlign: TextAlign.center,
      ),
    );
  }
}

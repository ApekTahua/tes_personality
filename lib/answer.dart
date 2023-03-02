import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;
  const Answer(this.selectHandler, this.answerText, {Key? key})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100.0),
          gradient: const LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: <Color>[
                Color.fromARGB(255, 213, 255, 251),
                Color.fromARGB(255, 22, 240, 218)
              ])),
      child: SizedBox(
        width: 80,
        height: 80,
        child: TextButton(
            onPressed: selectHandler,
            child: Text(
              answerText,
              style: const TextStyle(
                  fontFamily: 'Arial',
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 30),
            )),
      ),
    );
  }
}

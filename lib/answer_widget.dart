import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  final VoidCallback ActionHandle;
  final String answertext;
  const Answers(this.ActionHandle, this.answertext);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Color.alphaBlend(Color.fromRGBO(0, 95, 255, 1),
                Color.fromRGBO(255, 255, 255, 1))),
        onPressed: ActionHandle,
        child: Text(answertext),
      ),
    );
  }
}

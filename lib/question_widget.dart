import 'package:flutter/material.dart';

class question_widget extends StatelessWidget {
  final String Questiontext;
  question_widget(this.Questiontext);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(60),
      child: Text(
        Questiontext,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}

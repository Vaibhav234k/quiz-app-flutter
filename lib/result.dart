import 'package:flutter/material.dart';
import 'package:extended_icon_button/extended_icon_button.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function result;
  Result(this.totalScore, this.result);
  get percentage {
    double percentage = totalScore * 100 / 320;
    String resultStr = percentage.toStringAsFixed(2);
    return "$resultStr% Bad Choices";
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Text(
            percentage,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
            onPressed: result,
            child: Text('Restart quiz!'),
          )
        ],
      ),
    );
  }
}

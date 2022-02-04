import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizapp_login/screens/home_screen.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  Result(this.resultScore, this.resetHandler);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            'Score: ${resultScore}/10',
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 20,
          ),
          RaisedButton(
            color: Colors.blue,
            child: Text(
              'Restart Quiz!',
            ),
            textColor: Colors.white,
            onPressed: resetHandler,
          ),
          SizedBox(
            height: 20,
          ),
          RaisedButton(
              color: Colors.blue,
              child: Text(
                'Go to Home Screen',
              ),
              textColor: Colors.white,
              onPressed: () {
                Get.to(HomeScreen());
              }),
        ],
      ),
    );
  }
}

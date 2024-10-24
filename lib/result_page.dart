import 'package:flutter/material.dart';


class ResultPage extends StatelessWidget {
  final double bmi;

  ResultPage({required this.bmi});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text('BMI Result', style: TextStyle(
            color: Colors.orangeAccent.shade200),),
      ),
      body: Center(
        child: Text(
          'Your BMI is: ${bmi.toStringAsFixed(2)}',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

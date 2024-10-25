import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final double bmi;

  ResultPage({required this.bmi});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text(
          'BMI Result',
          style: TextStyle(color: Colors.orangeAccent.shade200),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            // BMI Categories List
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('BMI Categories:',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.blueGrey)),
                  SizedBox(height: 8),
                  Text('Underweight: < 18.5',
                      style: TextStyle(fontSize: 16)),
                  Text('Normal weight: 18.5 – 24.9',
                      style: TextStyle(fontSize: 16)),
                  Text('Overweight: 25 – 29.9',
                      style: TextStyle(fontSize: 16)),
                  Text('Obesity: BMI of 30 or greater',
                      style: TextStyle(fontSize: 16)),
                ],
              ),
            ),

            // Container for BMI result
            Container(
              height: 100,
              width: MediaQuery.of(context).size.width,
              color: Colors.orangeAccent.shade200,
              child: Center(
                child: Text(
                  'Your BMI is: ${bmi.toStringAsFixed(2)}',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.blueGrey,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}




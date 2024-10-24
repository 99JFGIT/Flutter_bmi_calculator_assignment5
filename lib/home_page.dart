import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator/result_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage>  createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _weightController = TextEditingController();
  final _heightController = TextEditingController();

  void _calculateBMI() {
    final double weight = double.tryParse(_weightController.text) ?? 0;
    final double height = double.tryParse(_heightController.text) ?? 0;

    if (weight > 0 && height > 0) {
      final double bmi = weight / (height * height);
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ResultPage(bmi: bmi),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text('BMI Calculator', style: TextStyle(
            color: Colors.orangeAccent.shade200),),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget> [

            Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                child: Column(
                  children: [
                    Text("Body mass index (BMI) is a measure of body fat based on height and weight that applies to adult men and women.",),
                    Text("Step-1: Enter your weight and height",),
                    Text("Step-2: Select 'Calculate BMI' and your BMI will appear.",),
                  ],
                ),
              ),
            ),

            // weight
            Padding(
              padding: const EdgeInsets.all(15),
              child: TextField(
                controller: _weightController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Weight (kg)",
                  hintText: "Enter Your Weight",
                  prefixIcon: const Icon(Icons.monitor_weight_outlined),
                ),
                keyboardType: TextInputType.number,
              ),
            ),

            //Height
            Padding(
              padding: const EdgeInsets.all(15),
              child: TextField(
                controller: _heightController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Height (m)",
                  hintText: "Enter Your Height",
                  prefixIcon: const Icon(Icons.height_outlined),
                ),
                keyboardType: TextInputType.number,
              ),
            ),


            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _calculateBMI,
              style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orangeAccent.shade100,),
              child: Text('Calculate BMI',style: TextStyle(
                  color: Colors.blueGrey),),
            ),

          ],
        ),
      ),
    );
  }
}


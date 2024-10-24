import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator/home_page.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  //function  for set timer
  startTimer() async {
    Timer(Duration(seconds: 5),() {

      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const HomePage()));

    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //call a function
    startTimer();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/bmilogo.png",height: 100, width: 100,),

            const SizedBox(height: 10,),

            Text("JF's BMI Calculator", style: GoogleFonts.acme(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.orangeAccent.shade200,
            ),),

            const SizedBox(height: 10,),
            const CircularProgressIndicator(
              color: Colors.blueGrey,
            )

          ],
        ),
      ),
    );
  }
}


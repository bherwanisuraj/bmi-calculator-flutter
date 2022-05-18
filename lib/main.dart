import 'package:bmi_calculator/Screens/homepage.dart';
import 'package:bmi_calculator/Screens/results.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BMICalc());
}

class BMICalc extends StatelessWidget {
  const BMICalc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'BMI App',
        initialRoute: '/',
        routes: {
          '/': (context) => MyHomePage(title: 'BMI App'),
          'calculate': (context) => Results(),
        });
  }
}

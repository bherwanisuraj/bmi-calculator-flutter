import 'package:bmi_calculator/Screens/homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BMICalc());
}

class BMICalc extends StatelessWidget {
  const BMICalc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

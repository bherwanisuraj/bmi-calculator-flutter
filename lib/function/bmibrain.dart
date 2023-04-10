import 'dart:math';

import 'package:flutter/material.dart';

class BmiBrain {
  BmiBrain({required this.height, required this.weight});

  final int height, weight;
  double _bmi = 0;
  List<String> report = ['Overweight', 'Normal', 'Underweight'];

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  Map<String, Color> getBmi() {
    if (_bmi >= 25) {
      return {report[0]: Colors.redAccent};
    } else if (_bmi >= 18.5 && _bmi <= 28) {
      return {report[1]: Colors.green};
    } else if (_bmi < 18.5) {
      return {report[2]: Colors.amber};
    } else {
      return {"Some error occured": Colors.red};
    }
  }

  String comments() {
    if (_bmi >= 25) {
      return "You have a higher than normal body weight. Try to exercise more.";
    } else if (_bmi >= 18.5 && _bmi <= 28) {
      return "You have a normal body weight. Good job!";
    } else if (_bmi < 18.5) {
      return "You have a lower than normal body weight. You can eat a bit more.";
    } else {
      return "Some error occured.";
    }
  }
}

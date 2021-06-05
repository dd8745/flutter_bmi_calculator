import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator/input_page.dart';

void main() {
  runApp(BMICalculator());
}

class BMICalculator extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _BMICalculatorState createState() => _BMICalculatorState();
}

class _BMICalculatorState extends State<BMICalculator> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      home: InputPage(),
    );
  }
}

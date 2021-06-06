import 'dart:math';

class CalculatorBrain {
  final int weight;
  final int height;
  double? _bmi;

  CalculatorBrain({required this.weight, required this.height});

  String calculateBMI() {
    _bmi = weight / pow(height, 2);
    return _bmi!.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi! >= 25) {
      return 'OverWeight';
    } else if (_bmi! > 18.5) {
      return 'Normal';
    } else {
      return 'Under Weight';
    }
  }

  String getInterpretation() {
    if (_bmi! >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more';
    } else if (_bmi! > 18.5) {
      return 'You have a normal body. Great Job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }
}

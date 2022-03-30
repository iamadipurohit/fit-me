import 'dart:math';

class BmiBrain {
  int height;
  int weight;
  BmiBrain({required this.height, required this.weight});
  double _bmi = 0;
  String value() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String word() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String statement() {
    if (_bmi >= 25) {
      return 'Try to loose weight with exercises.';
    } else if (_bmi > 18.5) {
      return 'Its absolutely fine. ';
    } else {
      return 'Try gaining some wait by following proper diet.';
    }
  }
}

import 'dart:math';

class Calculater {
  final int height;
  final int weight;
  Calculater({required this.height, required this.weight});

  double bmi = 0;

  String calculateBMI() {
    bmi = weight / pow(height / 100, 2);
    return bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (bmi >= 25) {
      return 'OverWeight';
    } else if (bmi >= 18.5) {
      return 'Normal';
    } else {
      return "UnderWeight";
    }
  }

  String getResultInterpretion() {
    if (bmi >= 25) {
      return 'You Have A Little Heigher Weight !! \n Try Some Exercise';
    } else if (bmi >= 18.5) {
      return 'Normal';
    } else {
      return "You Have A Little less Weight !!\n Eat Some More";
    }
  }
}

import 'dart:io';
import 'dart:math';

void main() {
  print("Enter radius of circle:");
  double radius = double.parse(stdin.readLineSync()!);

  double area = pi * pow(radius, 2);

  print("Area of circle: ${area.toStringAsFixed(2)}");
}

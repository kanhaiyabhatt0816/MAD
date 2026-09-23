import 'dart:io';

void main() {
  print("Enter length of rectangle:");
  double length = double.parse(stdin.readLineSync()!);
  
  print("Enter width of rectangle:");
  double width = double.parse(stdin.readLineSync()!);

  double area = length * width;
  double perimeter = 2 * (length + width);

  print("Area: $area");
  print("Perimeter: $perimeter");
}

import 'dart:io';

void main() {
  print("Enter first number:");
  double num1 = double.parse(stdin.readLineSync()!);
  
  print("Enter second number:");
  double num2 = double.parse(stdin.readLineSync()!);

  print("Sum: ${num1 + num2}");
  print("Difference: ${num1 - num2}");
  print("Product: ${num1 * num2}");
  if (num2 != 0) {
    print("Quotient: ${num1 / num2}");
  } else {
    print("Cannot divide by zero");
  }
}

import 'dart:io';

void main() {
  print("Enter first number:");
  double num1 = double.parse(stdin.readLineSync()!);
  
  print("Enter second number:");
  double num2 = double.parse(stdin.readLineSync()!);

  if (num1 > num2) {
    print("$num1 is larger");
  } else if (num2 > num1) {
    print("$num2 is larger");
  } else {
    print("Both are equal");
  }
}

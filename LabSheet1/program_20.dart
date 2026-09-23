import 'dart:io';

void main() {
  print("Enter a number:");
  int n = int.parse(stdin.readLineSync()!);
  int reverse = 0;

  while (n != 0) {
    int digit = n % 10;
    reverse = reverse * 10 + digit;
    n ~/= 10;
  }

  print("Reversed number: $reverse");
}

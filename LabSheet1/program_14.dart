import 'dart:io';

void main() {
  print("Enter percentage:");
  double percent = double.parse(stdin.readLineSync()!);

  if (percent >= 90) {
    print("Grade: A+");
  } else if (percent >= 80) {
    print("Grade: A");
  } else if (percent >= 70) {
    print("Grade: B");
  } else if (percent >= 60) {
    print("Grade: C");
  } else if (percent >= 50) {
    print("Grade: D");
  } else {
    print("Grade: F (Fail)");
  }
}

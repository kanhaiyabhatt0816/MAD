import 'dart:io';

void main() {
  print("Enter three numbers:");
  double n1 = double.parse(stdin.readLineSync()!);
  double n2 = double.parse(stdin.readLineSync()!);
  double n3 = double.parse(stdin.readLineSync()!);

  if (n1 >= n2 && n1 >= n3) {
    print("$n1 is the largest");
  } else if (n2 >= n1 && n2 >= n3) {
    print("$n2 is the largest");
  } else {
    print("$n3 is the largest");
  }
}

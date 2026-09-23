void main() {
  List<int> numbers = [45, 12, 89, 2, 67, 34];
  
  if (numbers.isEmpty) {
    print("The list is empty.");
    return;
  }

  int smallest = numbers[0];
  int largest = numbers[0];

  for (int number in numbers) {
    if (number < smallest) smallest = number;
    if (number > largest) largest = number;
  }

  print("Numbers: $numbers");
  print("Smallest: $smallest");
  print("Largest: $largest");
}

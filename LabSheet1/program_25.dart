void main() {
  String studentName = "Kanhaiya Bhatt";
  int sub1 = 85;
  int sub2 = 78;
  int sub3 = 92;

  int totalMarks = sub1 + sub2 + sub3;
  double percentage = (totalMarks / 300) * 100;

  print("Student Name: $studentName");
  print("Marks: Subject 1: $sub1, Subject 2: $sub2, Subject 3: $sub3");
  print("Total Marks: $totalMarks");
  print("Percentage: ${percentage.toStringAsFixed(2)}%");

  if (sub1 >= 40 && sub2 >= 40 && sub3 >= 40 && percentage >= 40) {
    print("Result: Pass");
  } else {
    print("Result: Fail");
  }
}

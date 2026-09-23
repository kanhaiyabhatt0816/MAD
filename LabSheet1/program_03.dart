void main() {
  // var: Type is inferred at compile-time or can change if not initialized
  var name = "Abhi";
  name = "Bhatt"; // Allowed

  // final: Can be set only once, initialized at runtime
  final DateTime now = DateTime.now();

  // const: Compile-time constant
  const double pi = 3.14159;

  print("Name (var): $name");
  print("Current Time (final): $now");
  print("PI (const): $pi");
}

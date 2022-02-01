class Person {
  String name = "Nischal";
  int age = 21;
}

void main() {
  var p1 = Person();
  var p2 = Person();
  p2.name = "mike";
  print("Hello World from ${p1.name}");
  print("Hello World from ${p2.name}");
  var x = addNumbers(p1.age, p2.age);
  print(x);
}

num addNumbers(num x, num y) {
  return x + y;
}

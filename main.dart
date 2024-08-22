typedef int Operation(int a, int b);
typedef String PrintFunction(String x);

String prints(String x) => x;

void printo(String a, PrintFunction printFunction) {
  print(printFunction(a));
}

int add(int a, int b) {
  return a + b;
}

int sub(int a, int b) {
  return a - b;
}

int mult(int a, int b) {
  return a * b;
}

void calc(int a, int b, Operation op) {
  var res = op(a, b);
  print("Result $res");
}

wrongAdd(String a, b) {
  return a + b;
}

void main() {
  var x = 1, y = 1;

  calc(x, y, add);
  calc(x, y, sub);
  calc(x, y, mult);
  // calc(x, y, wrongAdd);
  printo("Hello, World!", prints);
}

num sum<T extends num>(List<T> list) {
  if (list.isEmpty) {
    print('The list is empty.');
    return 0;
  }
  num sum = 0;
  for (var number in list) {
    sum += number;
  }
  return sum;
}

class Test<T extends num> {
  T? item;
  Test({this.item});

  T? testGet() => item;
}

class TestString {
  String item;
  TestString(this.item);

  String testGet() => item;
}

class TestInt {
  int item;
  TestInt(this.item);

  int testGet() => item;
  var t = Test<double>();
}

void main() {
  List<double> nums = [1.1, 2.2, 3.3, 4.4, 5.5, 6.6];
  print('Sum: ${sum(nums)}');

  var testString = TestString('Hello');
  print('TestString: ${testString.testGet()}');

  var testInt = TestInt(42);
  print('TestInt: ${testInt.testGet()}');
}

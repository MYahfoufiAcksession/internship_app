typedef int operation(int a, b);
void main() {
  var x, y, z;
  x = 1;
  y = 1;
  final name = 'Mohammad Yahfoufi';
  const gravity = 9.8;
  print(name);
  print(gravity);

  z = Map<String, int>();
  z["A"] = 1;
  z["B"] = 2;
  z["C"] = 3;
  List<int> num = [
    1,
    2,
    3,
    4,
    5,
    6,
  ];
  List<double> nums = [
    1.1,
    2.2,
    3.3,
    4.4,
    5.5,
    6.6,
  ];
  print(x + y);
  print(z);
  print(sum(nums));
  calc(x, y, add);
  //calc(x, y, wrongAdd);
  calc(x, y, sub);
  calc(x, y, mult);

  shout(() {
    print('Callback is invoked');
    var myObject = myobj();
    print('MyObject created: $myObject');
  });

  printCountries('Lebanon', 'Algeria');

  Map me = idMap(name: 'medo', age: 22, gender: 'male');
  print(me);

  bool? p;
  String text = 'condition';
  if (text == 'condition') {
    p = true;
  }
  if (p == true) {
    print('hello world');
  }
  print(p);
}

void shout(Function callback) {
  print('shout');
  callback();
}

void printCountries(String a, [String? b, String? c]) {
  print('The first country is: $a');
  print('The second country is: $b');
  print('The third country is: $c');
}

Map idMap(
    {required String name, required int age, required String gender, int? id}) {
  return {
    "name": name,
    "age": age,
    "gender": gender,
    "id": id,
  };
}

class myobj {
  myobj() {
    print('my object');
  }
}

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

void calc(a, b, operation op) {
  var res = op(a, b);
  print("Result ${res}");
}

int add(a, b) {
  return a + b;
}

int sub(a, b) {
  return a - b;
}

int mult(a, b) {
  return a * b;
}

wrongAdd(String a, b) {
  return a + b;
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

class Test<T extends num> {
  T? item;
  Test({this.item});
  T? testGet() => item;
}

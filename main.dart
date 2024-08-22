abstract class ItemAdder<T> {
  T add(T t1, T t2);
}

class IntegersAdder extends ItemAdder<int> {
  int add(t1, t2) {
    return t1 + t2;
  }
}

class StringsAdder extends ItemAdder<String> {
  String add(t1, t2) {
    return t1 + t2;
  }
}

class DoublesAdder extends ItemAdder<double> {
  double add(t1, t2) {
    return t1 + t2;
  }
}

void main() {
  ItemAdder<int> integersAdder = IntegersAdder();
  ItemAdder<String> stringsAdder = StringsAdder();
  ItemAdder<double> doublesAdder = DoublesAdder();
  print(integersAdder.add(1, 2));
  print(stringsAdder.add("Hello ", "World"));
  print(doublesAdder.add(1.1, 2.2));
}

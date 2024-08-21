void main() {
  String name = "";
  String coffee = "Coffee";
  String? milk;
  String milk2 = milk ?? "Dairy";
  print(isEmpty(name));
  //print(isEmpty(null));
  makeCoffee(coffee, milk);
  printLen(milk);
  realString(coffee);
  milk = 'Dairy';
  notNullable(milk);
  notNullable(milk2);

  Person p = Person();
  print('Name: ${p.name ?? "Mohammad"} and age: ${p.address ?? "Yahfoufi"}');
}

bool isEmpty(String string) => string.length == 0;

void makeCoffee(String coffee, [String? milk]) {
  if (milk != null) {
    print('$coffee with $milk');
  } else
    print('Black $coffee');
}

void printLen(String? string) {
  print(string?.length);
}

void realString(String definitelyString) {
  print(definitelyString.length);
}

void notNullable(String? string) {
  print(string!.length);
}

class Person {
  String? name;
  String? address;
}

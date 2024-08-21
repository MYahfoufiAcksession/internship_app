void main() {
  String name = "";
  String coffee = "Coffee";
  String? milk;
  print(isEmpty(name));
  //print(isEmpty(null));
  makeCoffee(coffee, milk);
  printLen(milk);
  realString(coffee);
  milk = 'Dairy';
  notNullable(coffee);
  notNullable(milk);
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

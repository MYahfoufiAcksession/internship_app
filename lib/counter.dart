import 'package:flutter/foundation.dart';

class CounterProvider extends ChangeNotifier {
  int _value = 0;

  int get value => _value;

  void increment() {
    _value += 1;
    notifyListeners();
  }
}

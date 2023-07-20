import 'dart:math';

import 'package:flutter/material.dart';

class MyClass extends ChangeNotifier {
  int first = 0;
  int second = 100;
  void changeAllProperties() {
    first = Random().nextInt(10);
    second = Random().nextInt(1000);
    notifyListeners();
  }
}

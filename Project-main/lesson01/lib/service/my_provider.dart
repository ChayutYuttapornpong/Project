import 'package:flutter/material.dart';
import 'package:lesson01/service/shared_object.dart';

class MyProvider extends InheritedWidget {
  final SharedObject sharedObject;
  @override
  final Widget child;
  const MyProvider({super.key, required this.sharedObject, required this.child})
      : super(child: child);

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return false;
  }

  static Object of(BuildContext context) {
    MyProvider? provider =
        context.dependOnInheritedWidgetOfExactType<MyProvider>();
    return provider!.sharedObject;
  }
}

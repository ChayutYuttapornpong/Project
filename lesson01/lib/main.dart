import 'package:flutter/material.dart';
import 'package:lesson01/shared/my_class.dart';
import 'package:lesson01/widgets/levels.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<MyClass>(
      create: (context) => MyClass(),
      child: MaterialApp(
          home: Scaffold(
        body: Center(child: Level1()),
      )),
    );
  }
}

import 'package:flutter/material.dart';
import '.screens/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('ล็อกอินฟอร์ม'),
        ),
        body: Container(),
      ),
    );
  }
}

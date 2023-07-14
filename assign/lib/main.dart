import 'package:assign/homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(Object context) {
    return const MaterialApp(
      home: SafeArea(
          child: Center(
        child: homepage(),
      )),
    );
  }
}

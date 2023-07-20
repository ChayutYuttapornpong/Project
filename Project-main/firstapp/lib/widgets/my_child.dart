import 'package:flutter/material.dart';

class MyChild extends StatelessWidget {
  final VoidCallback changeCounter;
  final String buttonName;
  MyChild(this.changeCounter, this.buttonName);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: changeCounter,
        child: Text(buttonName),
      ),
    );
  }
}

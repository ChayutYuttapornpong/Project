import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lesson01/shared/my_class.dart';
import 'package:provider/provider.dart';

const kMyTextStyle = TextStyle(fontSize: 40, color: Colors.blue);

class Level1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MyClass object = Provider.of<MyClass>(context);
    return Container(
      width: double.infinity,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            object.first.toString(),
            style: kMyTextStyle,
          ),
          Level2(),
        ],
      ),
    );
  }
}

class Level2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MyClass object = Provider.of<MyClass>(context);
    return Container(
      child: Column(children: [
        Text(
          object.second.toString(),
          style: kMyTextStyle,
        ),
        Level3()
      ]),
    );
  }
}

class Level3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MyClass object = Provider.of<MyClass>(context);
    return Container(
      child: ElevatedButton(
          onPressed: () {
            object.changeAllProperties();
          },
          child: Text('Random')),
    );
  }
}

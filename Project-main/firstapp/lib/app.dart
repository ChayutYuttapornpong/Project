import 'package:flutter/material.dart';
import './widgets/my_child.dart';

class App extends StatefulWidget {
  createState() => AppState();
}

class AppState extends State<App> {
  int counter = 0;
  increment() {
    setState(() {
      counter++;
    });
  }

  decrement() {
    setState(() {
      counter--;
    });
  }

  Widget build(context) {
    return MaterialApp(
      title: "App",
      home: Scaffold(
        appBar: AppBar(
          title: const Text('App'),
          centerTitle: true,
        ),
        body: Container(
          width: double.infinity,
          child: Column(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(top: 20),
              ),
              Text(
                '$counter',
                style: const TextStyle(fontSize: 90),
                textAlign: TextAlign.center,
              ),
              MyChild(increment, '+'),
              MyChild(decrement, '-')
            ],
          ),
        ),
      ),
    );
  }
}

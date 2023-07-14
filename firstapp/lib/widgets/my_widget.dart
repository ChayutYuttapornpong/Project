import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text(
            'Counter is:$counter',
            style: const TextStyle(
              fontSize: 50,
            ),
          ),
        ),
        appBar: AppBar(
          title: const Text('นับตัวเลข'),
          centerTitle: true,
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(
            Icons.add,
          ),
          onPressed: () {
            setState(() {
              counter = counter + 1;
            });
          },
        ),
      ),
    );
  }
}

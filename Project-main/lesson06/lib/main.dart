import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(const TestStream());
}

StreamController<String> streamController = StreamController();

class TestStream extends StatefulWidget {
  const TestStream({super.key});

  @override
  State<TestStream> createState() => _TestStreamState();
}

class _TestStreamState extends State<TestStream> {
  late Stream<String> myStream;
  @override
  void initState() {
    super.initState();
    myStream = streamController.stream;
    Timer(const Duration(milliseconds: 3000), () {
      streamController.sink.add('first value');
    });
    Timer(const Duration(milliseconds: 5000), () {
      streamController.sink.add('next value');
    });
  }

  @override
  void dispose() {
    streamController.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
            child: StreamBuilder<String>(
          stream: myStream,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.active) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    snapshot.data!,
                    style: const TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    child: const Text('Add Stream'),
                    onPressed: () {
                      DateTime date = DateTime.now();
                      streamController.sink.add(date.toIso8601String());
                    },
                  )
                ],
              );
            }
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
        )),
      ),
    );
  }
}

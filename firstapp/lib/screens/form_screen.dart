import 'package:flutter/material.dart';

class FormScreen extends StatelessWidget {
  const FormScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Screen'),
      ),
      body: GestureDetector(
        onPanUpdate: (details) {
          if (details.delta.dx >= 15 || details.delta.dx <= -15) {
            print(details.delta.dx);
            Navigator.pop(context);
          }
        },
        child: const Center(
          child: Text(
            'ลากนิ้วเพื่อเปลี่ยนจอ',
            style: TextStyle(
              fontSize: 30,
            ),
          ),
        ),
      ),
    );
  }
}

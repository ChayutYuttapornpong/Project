import 'package:flutter/material.dart';
import 'package:lesson08/service/auth_service.dart';

const kHomeStyle = TextStyle(
  fontSize: 30,
  fontWeight: FontWeight.bold,
  color: Colors.blue,
);

class HomeScreen extends StatelessWidget {
  final AuthService auth;
  const HomeScreen({super.key, required this.auth});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        actions: [
          TextButton(
              onPressed: auth.logout,
              child: const Icon(
                Icons.logout_sharp,
                color: Colors.white,
                size: 30,
              ))
        ],
      ),
      body: Center(
        // ignore: avoid_unnecessary_containers
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'HomePage',
                style: kHomeStyle,
              ),
              const SizedBox(
                height: 30,
              ),
              auth.currentUser != null
                  ? Text('รหัสผู้ใช้ : ${auth.currentUser!.uid}')
                  : Container(),
              const SizedBox(
                height: 100,
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  _LoginScreenState createState() => _LoginScreenState();
}

class _loginScreenState extends State<LoginScreen> {
  @override
  Widget build(context) {
    return Container(
      margin: EdgeInsets.all(5.0),
      child: Column(
        children: <Widget>[
          emailFormField(),
          passwordFormField(),
          submitButton(),
        ],
      ),
    );
  }

  Widget emailFormField() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'อีเมล',
        hintText: 'กรอกอีเมล',
        icon: Icon(Icons.email),
      ),
    );
  }

  Widget passwordFormField() {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        labelText: 'รหัสผ่าน',
        hintText: 'กรอกรหัสผ่าน',
        icon: Icon(Icons.lock),
      ),
    );
  }

  ElevatedButton submitButton() {
    return ElevatedButton(
      onPressed: () => print('hello'),
      child: Text('เข้าสู่ระบบ'),
    );
  }
}

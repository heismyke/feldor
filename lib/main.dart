import 'package:flutter/material.dart';
import 'screens/login.dart';
import './screens/homepage.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'fledor',
      home: Scaffold(
        backgroundColor: Color.fromRGBO(250, 78, 24, 1),
        body: LoginScreen(),
      ),
    );
  }
}
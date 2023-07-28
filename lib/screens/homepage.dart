import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'fledor',
      home: Scaffold(
        backgroundColor: Color.fromRGBO(250, 78, 24, 1),
        body: Center(
          child: Text(
          "hello world"
        ),
        )
      ),
    );
  }
}

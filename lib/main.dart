import 'package:flutter/material.dart';

import 'FirstPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'VoidCallback and Function(String) ',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return FirstPage(
      callbackclick: () => print('callback click void'),
      fncCallback: (value) {
        print('the value is--> ${value}');
      },
    );
  }
}

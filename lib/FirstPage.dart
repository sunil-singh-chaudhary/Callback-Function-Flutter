import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  final VoidCallback callbackclick;
  final Function(String) fncCallback;
  const FirstPage({required this.callbackclick, required this.fncCallback});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    String textFieldData = 'HI';

    return Scaffold(
      appBar: AppBar(title: const Text('Text Field')),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(15),
            child: TextField(
              decoration: const InputDecoration(border: OutlineInputBorder()),
              onChanged: (value) {
                textFieldData = value;
              },
            ),
          ),
          GestureDetector(
            onTap: () {
              widget.callbackclick();
              widget.fncCallback(textFieldData);
            },
            child: Container(
              width: 200,
              height: 50,
              color: Colors.grey,
              child: const Center(child: Text('Tap me')),
            ),
          ),
        ],
      ),
    );
  }
}

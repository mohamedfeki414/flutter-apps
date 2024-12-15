import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      home: Test(),
    ));

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hot Reload Test'),
        backgroundColor: Colors.green,
      ),
       body: Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset('sunrise1.jpg', width: 500),
        Image.asset('sunrise2.jpg', width: 500),
      ],
    ),
    const SizedBox(height: 20),
    Stack(
      children: [
        Image.asset('sunrise3.jpg', width: 500),
        const Positioned(
          top: 10,
          left: 10,
          child: Text(
            'Stack Example',
            style: TextStyle(color: Colors.white, backgroundColor: Colors.black),
          ),
        ),
      ],
    ),
  ],
),

    );
  }
}

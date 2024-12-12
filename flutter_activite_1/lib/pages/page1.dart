import 'package:flutter/material.dart';
class MaPremierPage extends StatelessWidget {
  const MaPremierPage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("Application Flutter"),
        backgroundColor: const Color.fromARGB(255, 7, 179, 86),
      ),
      body:const Center(
      child:Column(children:[Text("Bonjour IIT"),Text("2024-2025")])
      )
    );
     
  }
}
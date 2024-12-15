import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Ma première Application'),
          centerTitle: true,
          backgroundColor: Colors.blueGrey, // Couleur de l'AppBar
        ),
       body: const Center(
          child: Image(
          image: NetworkImage(
      'https://images.unsplash.com/photo-1535332371349-a5d229f49cb5?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTl8fG1vb258ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    ),
  ),
),
        floatingActionButton: FloatingActionButton(
          onPressed: () {}, // Fonctionnalité vide
          backgroundColor: Colors.blueGrey, // Couleur du bouton
          child: const Text('Click'),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Ma première Application'),
          centerTitle: true,
          backgroundColor: Colors.blueGrey, // Couleur de l'AppBar
        ),
        body: Center(
          child: Text(
            'Bonjour troisième année',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 2,
              color: Colors.grey[500],
              fontFamily: 'Indie',
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

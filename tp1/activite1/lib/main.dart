import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Exemple avec Polices Personnalisées'),
        ),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Texte avec Roboto',
                style: TextStyle(fontFamily: 'Roboto', fontSize: 24),
              ),
              SizedBox(height: 20), // Espacement entre les textes
              Text(
                'Texte avec Arial',
                style: TextStyle(fontFamily: 'Arial', fontSize: 24),
              ),
              SizedBox(height: 20),
              Text(
                'Texte avec Courier',
                style: TextStyle(fontFamily: 'Courier', fontSize: 24),
              ),
            ],
          ),
        ),
      ),
    ));

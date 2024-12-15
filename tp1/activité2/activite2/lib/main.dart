import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('TP Flutter - Questions 1 à 4'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Question 1: Paramètres Text et TextStyle
                const Text(
                  'Question 1: Exemple avec Text',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Texte aligné au centre avec style personnalisé.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.italic,
                    letterSpacing: 2.0,
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.red,
                    decorationStyle: TextDecorationStyle.dotted,
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Texte avec Roboto',
                  style: TextStyle(fontFamily: 'Roboto', fontSize: 18),
                ),
                const Text(
                  'Texte avec Arial',
                  style: TextStyle(fontFamily: 'Arial', fontSize: 18),
                ),
                const Text(
                  'Texte avec Courier',
                  style: TextStyle(fontFamily: 'Courier', fontSize: 18),
                ),
                const SizedBox(height: 20),

                // Question 2: Nouvelle police personnalisée
                const Text(
                  'Question 2: Exemple avec une police personnalisée',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Texte avec une police personnalisée (Roboto).',
                  style: TextStyle(fontFamily: 'Roboto', fontSize: 18),
                ),
                const SizedBox(height: 20),

                // Question 3: Ajouter plusieurs lignes de texte
                const Text(
                  'Question 3: Ajouter plusieurs lignes de texte',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Première ligne de texte.'),
                    Text('Deuxième ligne de texte.'),
                    Text('Troisième ligne de texte.'),
                  ],
                ),
                const SizedBox(height: 20),

                // Question 4: Widgets Column, Row, Stack, Container et Padding
                const Text(
                  'Question 4: Widgets Column, Row, Stack, Container, Padding',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                // Column Example
                const Column(
                  children: [
                    Text('Texte dans une colonne 1'),
                    Text('Texte dans une colonne 2'),
                  ],
                ),
                const SizedBox(height: 20),
                // Row Example
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('Texte 1'),
                    Text('Texte 2'),
                  ],
                ),
                const SizedBox(height: 20),
                // Stack Example
                Stack(
                  children: [
                    Container(
                      width: 150,
                      height: 150,
                      color: Colors.blue,
                    ),
                    const Positioned(
                      top: 50,
                      left: 50,
                      child: Text(
                        'Texte au-dessus',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                // Container and Padding Example
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: Colors.yellow,
                    child: const Text(
                      'Texte avec un conteneur et du padding',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

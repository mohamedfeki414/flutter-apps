import 'package:flutter/material.dart';



void main() => runApp(MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Exemple du Widget TextStyle'),
        ),
        body: const Center(
          child: Text(
            'Bonjour, Flutter !',
            style: TextStyle(
              color: Colors.green, // Couleur du texte
              fontSize: 24.0, // Taille de la police
              fontWeight: FontWeight.w900, // Très gras
              fontStyle: FontStyle.italic, // Italique
              letterSpacing: 2.0, // Espacement entre les lettres
              wordSpacing: 5.0, // Espacement entre les mots
              backgroundColor: Colors.yellow, // Couleur de fond du texte
              decoration: TextDecoration.underline, // Décoration : souligné
              decorationColor: Colors.red, // Couleur de la décoration
              decorationStyle: TextDecorationStyle.dashed, // Style de la décoration
              shadows: [
                Shadow(
                  color: Colors.grey, // Couleur de l'ombre
                  offset: Offset(2, 2), // Décalage horizontal et vertical
                  blurRadius: 3, // Rayon de flou
                ),
              ],
            ),
          ),
        ),
      ),
    ));


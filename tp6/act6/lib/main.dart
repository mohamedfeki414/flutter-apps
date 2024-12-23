import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Firebase Firestore Example'),
        ),
        body: const Center(
          child: ElevatedButton(
            onPressed: addTeacher,
            child: Text('Ajouter Enseignant'),
          ),
        ),
      ),
    );
  }
}

void addTeacher() {
  FirebaseFirestore.instance.collection('enseignant').add({
    'Id_enseignant': '2356',
    'nom': 'Med',
    'prenom': 'salah',
    'grade': 'Professeur',
    'specialite': 'Informatique',
  }).then((value) {
    if (kDebugMode) {
      print("Enseignant ajouté avec succès !");
    }
  }).catchError((error) {
    if (kDebugMode) {
      print("Erreur lors de l'ajout de l'enseignant : $error");
    }
  });
}

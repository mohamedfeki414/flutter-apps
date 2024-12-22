import 'package:flutter/material.dart';
import 'laclasse.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Liste des étudiants')),
        body: ListView.builder(
          itemCount: etudiants.length,
          itemBuilder: (context, index) {
            final etudiant = etudiants[index];
            return ListTile(
              leading: Image.asset(etudiant.photo),
              title: Text('${etudiant.nom} ${etudiant.prenom}'),
              subtitle: Text('Matricule: ${etudiant.matricule}\nTéléphone: ${etudiant.telephone}'),
            );
          },
        ),
      ),
    );
  }
}

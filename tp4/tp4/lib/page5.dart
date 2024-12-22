import 'package:flutter/material.dart';
import 'laclasse.dart';

class Page5 extends StatelessWidget {
  final Etudiant etudiant;

  const Page5({super.key, required this.etudiant});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('${etudiant.nom} ${etudiant.prenom}')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(etudiant.photo, height: 150, width: 150),
            Text('Matricule: ${etudiant.matricule}', style: const TextStyle(fontSize: 18)),
            Text('Téléphone: ${etudiant.telephone}', style: const TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
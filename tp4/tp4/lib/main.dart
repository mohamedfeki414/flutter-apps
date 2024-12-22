import 'package:flutter/material.dart';
import 'laclasse.dart'; // Fichier contenant la définition de la classe et la liste des étudiants

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
        body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 3 / 2,
          ),
          itemCount: etudiants.length,
          itemBuilder: (context, index) {
            final etudiant = etudiants[index];
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Page5(etudiant: etudiant)),
                );
              },
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                elevation: 4,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.asset(etudiant.photo, height: 80, width: 80, fit: BoxFit.cover),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        '${etudiant.nom} ${etudiant.prenom}',
                        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 5),
                      Text(
                        'Matricule: ${etudiant.matricule}',
                        style: const TextStyle(fontSize: 12),
                      ),
                      Text(
                        'Téléphone: ${etudiant.telephone}',
                        style: TextStyle(fontSize: 12, color: Colors.grey[700]),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

// Page de détail pour afficher les informations d'un étudiant
class Page5 extends StatelessWidget {
  final Etudiant etudiant; // Objet représentant un étudiant

  const Page5({super.key, required this.etudiant});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Détails de ${etudiant.nom} ${etudiant.prenom}'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(etudiant.photo, height: 150, width: 150, fit: BoxFit.cover),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Nom: ${etudiant.nom} ${etudiant.prenom}',
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              'Matricule: ${etudiant.matricule}',
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 10),
            Text(
              'Téléphone: ${etudiant.telephone}',
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

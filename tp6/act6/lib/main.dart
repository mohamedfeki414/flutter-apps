import 'package:firebase_core/firebase_core.dart'; 
import 'package:flutter/material.dart'; 
import 'package:cloud_firestore/cloud_firestore.dart'; 
 
void main() async { 
  WidgetsFlutterBinding.ensureInitialized(); 
  await Firebase.initializeApp(); 
  runApp(MyApp()); 
}
  @override 
  Widget build(BuildContext context) { 
    return MaterialApp( 
      home: Scaffold( 
        appBar: AppBar( 
          title: Text('Firebase Firestore Example'), 
        ), 
        body: Center( 
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
    'Id_enseignant': '12345', 
    'nom': 'Ali', 
    'prenom': 'Ben Salah', 
    'grade': 'Professeur', 
    'specialite': 'Informatique', 
  }).then((value) { 
    print("Enseignant ajouté avec succès !"); 
  }).catchError((error) { 
    print("Erreur lors de l'ajout de l'enseignant : $error"); 
  }); 
}
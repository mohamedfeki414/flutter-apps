class Etudiant {
  final String matricule;
  final String nom;
  final String prenom;
  final String telephone;
  final String photo;

  Etudiant({
    required this.matricule,
    required this.nom,
    required this.prenom,
    required this.telephone,
    required this.photo,
  });
}

// Liste de 20 étudiants
List<Etudiant> etudiants = [
  Etudiant(matricule: '001', nom: 'Ali', prenom: 'Ben Salah', telephone: '22221100', photo: 'assets/images/ali.png'),
  Etudiant(matricule: '002', nom: 'Karima', prenom: 'Mabrouki', telephone: '74227474', photo: 'assets/images/karima.png'),
  // Ajoutez d'autres étudiants ici (en suivant le format ci-dessus)
];

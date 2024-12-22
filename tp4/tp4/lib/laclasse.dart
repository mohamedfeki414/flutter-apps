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
  Etudiant(matricule: '003', nom: 'Amina', prenom: 'Gharbi', telephone: '28528528', photo: 'assets/images/Amina.png'),
  Etudiant(matricule: '004', nom: 'Samira', prenom: 'Marouki', telephone: '62852854', photo: 'assets/images/Samira.png'),
  Etudiant(matricule: '005', nom: 'Sami', prenom: 'Mabrouki', telephone: '34527451', photo: 'assets/images/Sami.png'),
  Etudiant(matricule: '006', nom: 'said', prenom: 'Mabrouki', telephone: '94227474', photo: 'assets/images/said.png'),
  Etudiant(matricule: '007', nom: 'Karim', prenom: 'Mabrouki', telephone: '84227474', photo: 'assets/images/karim.png'),


  
];

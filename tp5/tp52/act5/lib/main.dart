import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: FormulaireAvance(),
    );
  }
}

class FormulaireAvance extends StatefulWidget {
  const FormulaireAvance({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _FormulaireAvanceState createState() => _FormulaireAvanceState();
}

class _FormulaireAvanceState extends State<FormulaireAvance> {
  final _formKey = GlobalKey<FormState>();
  String _nom = '';
  String _selectedDropdownValue = 'Java';
  String _selectedOption = 'Option 1';
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Formulaire Avancé'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Champ de texte pour le nom
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Nom',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Veuillez entrer votre nom';
                  }
                  return null;
                },
                onSaved: (value) {
                  _nom = value!;
                },
              ),
              const SizedBox(height: 16.0),

              // Boutons radio pour le sexe
              const Text('Sélectionnez votre sexe :'),
              Row(
                children: [
                  Radio<String>(
                    value: 'Homme',
                    groupValue: _selectedOption,
                    onChanged: (value) {
                      setState(() {
                        _selectedOption = value!;
                      });
                    },
                  ),
                  const Text('Homme'),
                  Radio<String>(
                    value: 'Femme',
                    groupValue: _selectedOption,
                    onChanged: (value) {
                      setState(() {
                        _selectedOption = value!;
                      });
                    },
                  ),
                  const Text('Femme'),
                ],
              ),
              const SizedBox(height: 16.0),

              // Case à cocher
              const Text('Case à cocher :'),
              Row(
                children: [
                  Checkbox(
                    value: _isChecked,
                    onChanged: (value) {
                      setState(() {
                        _isChecked = value!;
                      });
                    },
                  ),
                  const Text('Option acceptée'),
                ],
              ),
              const SizedBox(height: 16.0),

              // Menu déroulant
              const Text('Sélectionnez votre spécialité :'),
              DropdownButton<String>(
                value: _selectedDropdownValue,
                items: ['Java', 'J2EE', 'Web'].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    _selectedDropdownValue = value!;
                  });
                },
              ),
              const SizedBox(height: 16.0),

              // Bouton élevé
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();

                    // Afficher une boîte de dialogue avec les données
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: const Text('Données du formulaire'),
                          content: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text('Nom : $_nom'),
                              Text('Sexe : $_selectedOption'),
                              Text('Option acceptée : ${_isChecked ? "Oui" : "Non"}'),
                              Text('Spécialité : $_selectedDropdownValue'),
                            ],
                          ),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text('OK'),
                            ),
                          ],
                        );
                      },
                    );
                  }
                },
                child: const Text('Soumettre'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

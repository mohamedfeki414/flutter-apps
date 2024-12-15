import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // Index pour la navigation via BottomNavigationBar
  // ignore: unused_field
  var _selectedIndex = 0;

  // Pages associées aux éléments du BottomNavigationBar
  // ignore: unused_field
  static const List<Widget> _pages = <Widget>[
    Text('Page Accueil', style: TextStyle(fontSize: 24)),
    Text('Page Recherche', style: TextStyle(fontSize: 24)),
    Text('Page Profil', style: TextStyle(fontSize: 24)),
  ];

  // Fonction appelée lors de la sélection d'un élément de la barre de navigation
  // ignore: unused_element
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TP Flutter 3',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/', // Route initiale
      routes: {
        '/': (context) => const HomePage(), // Page principale
        '/second': (context) => const SecondPage(),
        '/third': (context) => const ThirdPage(),
      },
    );
  }
}

// Première page (page d'accueil)
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Accueil'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text(
                'Header du Drawer',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.message),
              title: const Text('Messages'),
              onTap: () {
                Navigator.pushNamed(context, '/second');
              },
            ),
            ListTile(
              leading: const Icon(Icons.account_circle),
              title: const Text('Profil'),
              onTap: () {
                Navigator.pushNamed(context, '/third');
              },
            ),
          ],
        ),
      ),
      body: const Center(
        child: Text(
          'Bienvenue à la page d\'accueil',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

// Deuxième page
class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Messages'),
      ),
      body: const Center(
        child: Text(
          'Bienvenue à la page des messages',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

// Troisième page
class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil'),
      ),
      body: const Center(
        child: Text(
          'Bienvenue à la page du profil',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

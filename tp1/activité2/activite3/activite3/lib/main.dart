import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // Index pour la navigation via BottomNavigationBar
  int _selectedIndex = 0;

  // Pages associées aux éléments du BottomNavigationBar
  static const List<Widget> _pages = <Widget>[
    Text('Page Accueil', style: TextStyle(fontSize: 24)),
    Text('Page Recherche', style: TextStyle(fontSize: 24)),
    Text('Page Profil', style: TextStyle(fontSize: 24)),
  ];

  // Fonction appelée lors de la sélection d'un élément de la barre de navigation
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
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/second': (context) => const SecondPage(),
        '/third': (context) => const ThirdPage(),
      },
      home: Scaffold(
        appBar: AppBar(
          title: const Text('TP Flutter 3'),
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
        body: Center(
          child: _pages.elementAt(_selectedIndex), // Affiche la page sélectionnée
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Accueil',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Recherche',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profil',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.blue,
          onTap: _onItemTapped,
        ),
      ),
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

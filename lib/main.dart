import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.grey.shade200,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Perpustakaan',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue.shade600,
        elevation: 4.0,
      ),
      drawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue.shade600,
              ),
              child: const Text(
                "Menu",
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(Icons.book, color: Colors.blue.shade800),
              title: Text("Buku"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.credit_card, color: Colors.blue.shade800),
              title: Text("Pinjaman"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.person, color: Colors.blue.shade800),
              title: Text("Member"),
              onTap: () {},
            ),
            const Divider(),
            ListTile(
              leading: Icon(Icons.logout, color: Colors.red.shade400),
              title: Text("Logout"),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: Center(
        child: Text(
          "Selamat Datang di Perpustakaan",
          style: TextStyle(fontSize: 20, color: Colors.grey.shade700),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Colors.blue.shade800,
        unselectedItemColor: Colors.grey.shade500,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: "Buku",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.credit_card),
            label: "Pinjaman",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Member",
          ),
        ],
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}

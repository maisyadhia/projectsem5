import 'package:flutter/material.dart';

void main() {
  runApp(const ListViewExample());
}

class ListViewExample extends StatelessWidget {
  const ListViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Contoh ListView')),
        body: ListView(
          // ListView memungkinkan elemen banyak yang bisa di-scroll secara vertikal
          children: const [
            ListTile(
              leading: Icon(Icons.star),
              title: Text('Item 1'),
            ),
            ListTile(
              leading: Icon(Icons.favorite),
              title: Text('Item 2'),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Item 3'),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Item 4'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Item 5'),
            ),
          ],
        ),
      ),
    );
  }
}

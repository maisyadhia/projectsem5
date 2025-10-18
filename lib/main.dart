import 'package:flutter/material.dart';

void main() {
  runApp(const Sib3a());
}

class Sib3a extends StatelessWidget {
  const Sib3a({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutternya Maisya'),
          backgroundColor: Colors.purple,
        ),
        drawer: Drawer(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('You have ...'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.star, color: Colors.amber),
                Icon(Icons.star, color: Colors.amber),
                Icon(Icons.star_half, color: Colors.amber),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

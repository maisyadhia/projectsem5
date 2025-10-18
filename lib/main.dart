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
          title: Row(
            children: [
              const Icon(Icons.account_circle, size: 48, color: Colors.white),
              const Text('Flutternya Maisya'),
              const FlutterLogo(size: 48),
              Image.asset('assets/images/poltek.jpeg', width: 48, height: 48),
            ],
          ),
          backgroundColor: Colors.purple,
        ),
        drawer: const Drawer(),
        body: const Center(child: Placeholder()),
      ),
    );
  }
}

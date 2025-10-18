import 'package:flutter/material.dart';
// Import library Flutter

class StylingExample extends StatelessWidget {
  const StylingExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Styling dan Positioning')),
      body: Stack(
        // Stack: menumpuk widget di atas satu sama lain
        children: [
          Container(
            color: Colors.lightBlueAccent,
            // Latar belakang biru muda memenuhi layar
          ),
          Align(
            alignment: Alignment.center,
            // Menempatkan child di tengah layar
            child: Container(
              padding: const EdgeInsets.all(20),
              color: Colors.white,
              // Container putih di tengah
              child: const Text(
                'Tengah Layar',
                style: TextStyle(
                  fontSize: 22, 
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: StylingExample(),
  ));
}

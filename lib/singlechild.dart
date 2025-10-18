import 'package:flutter/material.dart';
// Import library utama Flutter

void main() {
  runApp(const SingleChildExample());
  // Fungsi utama untuk menjalankan aplikasi
}

class SingleChildExample extends StatelessWidget {
  const SingleChildExample({super.key});

  @override
  Widget build(BuildContext context) {
    // build() adalah fungsi untuk membangun tampilan (UI)
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Single Child Layout Example'),
          backgroundColor: Colors.blue,
        ),
        body: const Center(
          // Center adalah SingleChildLayout → hanya menampung satu widget anak
          child: Text(
            'Hello Flutter!',
            style: TextStyle(
              fontSize: 30, 
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

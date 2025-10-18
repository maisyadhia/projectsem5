import 'package:flutter/material.dart';
// Import library Flutter

void main() {
  runApp(const ColumnExample());
}

class ColumnExample extends StatelessWidget {
  const ColumnExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Contoh Column'),
          backgroundColor: Colors.green,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // Menyusun anak-anak secara vertikal dan posisikan di tengah layar
          crossAxisAlignment: CrossAxisAlignment.center,
          // Posisi horizontal di tengah
          children: [
            const Text('Ini baris pertama'),
            const Text('Ini baris kedua'),
            const SizedBox(height: 20),
            // Memberi jarak antar elemen
            ElevatedButton(
              onPressed: () {
                // Aksi saat tombol ditekan
                debugPrint('Tombol ditekan!');
              },
              child: const Text('Tombol'),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart'; 
// Import library utama Flutter untuk membuat UI berbasis Material Design

void main() {
  runApp(const GantiWarnaApp());
  // Fungsi utama untuk menjalankan aplikasi
  // Menjalankan widget utama yaitu GantiWarnaApp
}

class GantiWarnaApp extends StatefulWidget {
  const GantiWarnaApp({super.key});
  // StatefulWidget digunakan karena ada perubahan state (warna dan teks)

  @override
  State<GantiWarnaApp> createState() => _GantiWarnaAppState();
  // Method ini membuat instance dari State (_GantiWarnaAppState)
}

class _GantiWarnaAppState extends State<GantiWarnaApp> {
  bool _isBlue = true;
  // Variabel state untuk menentukan warna dan teks
  // true = warna biru, false = warna pink

  void _ubahWarna() {
    setState(() {
      _isBlue = !_isBlue; 
      // setState digunakan agar UI diperbarui setelah nilai _isBlue berubah
    });
  }

  @override
  Widget build(BuildContext context) {
    // Build method dijalankan setiap kali ada perubahan state
    return MaterialApp(
      home: Scaffold(
        backgroundColor: _isBlue ? Colors.blue[100] : Colors.pink[100],
        // Mengubah warna latar belakang berdasarkan nilai _isBlue

        appBar: AppBar(
          title: const Text('Contoh Stateful: Ubah Warna'),
          backgroundColor: _isBlue ? Colors.blue : Colors.pink,
          // Mengubah warna AppBar sesuai state
        ),

        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // Menempatkan isi (text & button) di tengah secara vertikal
            children: [
              Text(
                _isBlue ? 'Warna Biru 💙' : 'Warna Merah Muda 💗',
                // Menampilkan teks sesuai kondisi warna
                style: TextStyle(
                  fontSize: 24,
                  color: _isBlue ? Colors.blue[900] : Colors.pink[900],
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              // Memberi jarak vertikal antara teks dan tombol

              ElevatedButton(
                onPressed: _ubahWarna,
                // Saat tombol ditekan, jalankan fungsi _ubahWarna()

                style: ElevatedButton.styleFrom(
                  backgroundColor: _isBlue ? Colors.blue : Colors.pink,
                  // Warna tombol sesuai state
                ),
                child: const Text(
                  'Ubah Warna',
                  style: TextStyle(
                    color: Colors.white, 
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

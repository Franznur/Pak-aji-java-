import 'package:flutter/material.dart';

void main() {
  runApp(const KalkulatorApp());
}

class KalkulatorApp extends StatelessWidget {
  const KalkulatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kalkulator Sederhana',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const KalkulatorScreen(),
    );
  }
}

class KalkulatorScreen extends StatefulWidget {
  const KalkulatorScreen({super.key});

  @override
  State<KalkulatorScreen> createState() => _KalkulatorScreenState();
}

class _KalkulatorScreenState extends State<KalkulatorScreen> {
  // Controller untuk mengambil teks dari input
  final TextEditingController _controllerAngka1 = TextEditingController();
  final TextEditingController _controllerAngka2 = TextEditingController();

  // Variabel untuk menyimpan hasil
  String _hasil = '0';

  // Fungsi untuk melakukan kalkulasi
  void _hitung(String operasi) {
    final double? angka1 = double.tryParse(_controllerAngka1.text);
    final double? angka2 = double.tryParse(_controllerAngka2.text);

    if (angka1 == null || angka2 == null) {
      setState(() {
        _hasil = 'Input tidak valid!';
      });
      return;
    }

    setState(() {
      switch (operasi) {
        case '+':
          _hasil = (angka1 + angka2).toString();
          break;
        case '-':
          _hasil = (angka1 - angka2).toString();
          break;
        case 'x':
          _hasil = (angka1 * angka2).toString();
          break;
        case ':':
          if (angka2 == 0) {
            _hasil = 'Tidak bisa dibagi 0!';
          } else {
            _hasil = (angka1 / angka2).toString();
          }
          break;
      }
    });
  }

  // Fungsi untuk mereset input dan hasil
  void _reset() {
    setState(() {
      _controllerAngka1.clear();
      _controllerAngka2.clear();
      _hasil = '0';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kalkulator Sederhana'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            // Input Angka Pertama
            TextField(
              controller: _controllerAngka1,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Angka Pertama',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),

            // Input Angka Kedua
            TextField(
              controller: _controllerAngka2,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Angka Kedua',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 24),

            // Tombol Operasi (+, -, x, :)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () => _hitung('+'),
                  child: const Text('+', style: TextStyle(fontSize: 20)),
                ),
                ElevatedButton(
                  onPressed: () => _hitung('-'),
                  child: const Text('-', style: TextStyle(fontSize: 20)),
                ),
                ElevatedButton(
                  onPressed: () => _hitung('x'),
                  child: const Text('x', style: TextStyle(fontSize: 20)),
                ),
                ElevatedButton(
                  onPressed: () => _hitung(':'),
                  child: const Text(':', style: TextStyle(fontSize: 20)),
                ),
              ],
            ),
            const SizedBox(height: 16),

            // Tombol Reset
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: _reset,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.redAccent,
                  foregroundColor: Colors.white,
                ),
                child: const Text('Reset'),
              ),
            ),
            const SizedBox(height: 32),

            // TextView / Text Hasil
            Text(
              'Hasil: $_hasil',
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import '../components/textfieldfesnuk.dart';

class Fesnuk extends StatelessWidget {
  Fesnuk({super.key});

  final TextEditingController txtUsername = TextEditingController();
  final TextEditingController txtPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo Facebook / Fesnuk
            const Icon(
              Icons.facebook,
              size: 80,
              color: Color(0xFF1877F2),
            ),
            const SizedBox(height: 30),

            // Textfield Username
            MyTextfield(
              myHint: "Milih Nomormu tah emailmu?",
              txtController: txtUsername,
              radius: 8,
            ),
            const SizedBox(height: 12),

            // Textfield Password
            MyTextfield(
              myHint: "Kata sandine mas",
              txtController: txtPassword,
              radius: 8,
              isObscure: true,
            ),
            const SizedBox(height: 16),

            // Tombol Login
            SizedBox(
              width: double.infinity,
              height: 48,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF1877F2),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  "Log Masuk",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),

            // Lupa Password
            TextButton(
              onPressed: () {},
              child: const Text(
                "Jenengan Lupa kata sandine?",
                style: TextStyle(color: Color(0xFF1877F2)),
              ),
            ),
            const SizedBox(height: 20),

            // Tombol Buat Akun Baru
            SizedBox(
              width: double.infinity,
              height: 44,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: Color(0xFF1877F2)),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  "Buat akun baru",
                  style: TextStyle(
                    color: Color(0xFF1877F2),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
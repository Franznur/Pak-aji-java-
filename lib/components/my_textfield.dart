import 'package:flutter/material.dart';

class MyTextfield extends StatelessWidget {
  final String myHint;
  final TextEditingController txtController; // <-- Harus ada ini
  final double radius;

  const MyTextfield({
    super.key,
    required this.myHint,
    required this.txtController,
    this.radius = 12,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: txtController, // <-- PASTIKAN BARIS INI ADA & TIDAK KETINGGALAN!
      decoration: InputDecoration(
        hintText: myHint,
        hintStyle: const TextStyle(color: Color(0xFF94A3B8), fontSize: 14),
        filled: true,
        fillColor: const Color(0xFFF8FAFC),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius),
          borderSide: const BorderSide(color: Color(0xFFE2E8F0)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius),
          borderSide: const BorderSide(color: Color(0xFFE2E8F0)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius),
          borderSide: const BorderSide(color: Color(0xFF6366F1), width: 1.5),
        ),
      ),
    );
  }
}
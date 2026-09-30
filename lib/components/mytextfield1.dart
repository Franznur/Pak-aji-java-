import 'package:flutter/material.dart';

class Mytextfield extends StatelessWidget {
  //list variable parameter yang digunakan
  final String myHint;//untuk diisikan ketika diambil
  final TextEditingController TxtController;//untuk mengontrol teks yang diinputkan
  final double Radius; // Radius sudut untuk border
  const Mytextfield({super.key, required this.myHint, required this.TxtController, required this.Radius});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: TxtController,
      decoration: InputDecoration(hint: Text(myHint), border: OutlineInputBorder(borderRadius: BorderRadius.circular(Radius))),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyTextField2 extends StatelessWidget {
  // list variabel parameter yang dipake

  final String myHint;
  final TextEditingController txtController;
  final double radius; // untuk diisikan ketika dipanggil

  const MyTextField2({
    super.key,
    required this.myHint,
    required this.txtController,
    required this.radius,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: txtController,

      keyboardType: TextInputType.number,

      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
      ],

      decoration: InputDecoration(
        hint: Text(myHint),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius),
        ),
      ),
    );
  }
}
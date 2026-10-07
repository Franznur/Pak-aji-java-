import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'routes.dart'; // Pastikan import file routes kamu!

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aplikasi Toko',
      // GANTI BAGIAN INI MENJADI KATALOG PRODUK!
      initialRoute: Routes.listProduk, 
      getPages: Routes.myPages,
    );
  }
}
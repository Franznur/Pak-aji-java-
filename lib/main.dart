import 'package:flutter/material.dart';
import 'package:get/get.dart'; // 1. Import package GetX
import 'routes.dart'; // 2. Import file routes kamu!

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp( // 3. Ganti MaterialApp jadi GetMaterialApp
      debugShowCheckedModeBanner: false,
      title: "Belajar Flutter PPLG 3",
      initialRoute: Routes.registration,
      getPages: Routes.pages, // 4. Perhatikan huruf P kapital (getPages)
    );
  }
}
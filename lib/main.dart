import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'pages/registration_page.dart';
import 'pages/confirm_registration_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/register',
      getPages: [
        GetPage(
          name: '/register',
          page: () => const RegistrationPage(),
        ),
        GetPage(
          name: '/confirm', // <-- PASTIKAN ROUTE INI SUDAH DIDAFTARKAN!
          page: () => const ConfirmRegistrationPage(),
        ),
      ],
    );
  }
}
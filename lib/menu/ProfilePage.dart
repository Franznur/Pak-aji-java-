import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 78, 185, 20),
        foregroundColor: Colors.white,
      ),
      body: const Center(
        child: Text('Halaman Profile'),
      ),
    );
  }
}

import '../controller/confirm_registration_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ConfirmRegistrationPage extends StatelessWidget {
  const ConfirmRegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ConfirmRegistrationController());

    return Scaffold(
      appBar: AppBar(title: const Text("Confirm Registration")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Nama: ${controller.nama}", style: const TextStyle(fontSize: 16)),
            const SizedBox(height: 8),
            Text("Alamat: ${controller.alamat}", style: const TextStyle(fontSize: 16)),
            const SizedBox(height: 8),
            Text("Jenis Kelamin: ${controller.jenisKelamin}", style: const TextStyle(fontSize: 16)),
            const SizedBox(height: 8),
            
            Text("No HP: ${controller.noHp}", style: const TextStyle(fontSize: 16)),
            const SizedBox(height: 8),
            Text("Email: ${controller.email}", style: const TextStyle(fontSize: 16)),
            const SizedBox(height: 24),

            ElevatedButton(
              onPressed: () => Get.back(),
              child: const Text("Kembali"),
            ),
          ],
        ),
      ),
    );
  }
}
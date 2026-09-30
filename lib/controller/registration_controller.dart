import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../routes.dart';

class RegistrationController extends GetxController {
  final txtNama = TextEditingController();
  final txtAlamat = TextEditingController();
  final txtNoHp = TextEditingController();
  final txtEmail = TextEditingController();

  void sendData() {
    Get.toNamed(
      Routes.confirmRegistration,
      arguments: {
        'name': txtNama.text,
        'alamat': txtAlamat.text,
        'jenis_kelamin': "Laki-Laki", // Bisa kamu sesuaikan nanti
        'no_hp': txtNoHp.text,
        'email': txtEmail.text,
      },
    );
  }

  @override
  void onClose() {
    txtNama.dispose();
    txtAlamat.dispose();
    txtNoHp.dispose();
    txtEmail.dispose();
    super.onClose();
  }
}
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegistrationController extends GetxController {
  // Controller untuk TextField yang udah kamu punya
  final txtNama = TextEditingController();
  final txtAlamat = TextEditingController();
  final txtNoHp = TextEditingController();
  final txtEmail = TextEditingController();

  // TAMBAHKAN VARIABEL INI BIAR NGGAK MERAH LAGI!
  var selectedGender = ''.obs;

  void sendData() {
    // Jalankan logika kirim data/pindah halaman kamu di sini
    Get.toNamed('/confirm', arguments: {
      'nama': txtNama.text,
      'alamat': txtAlamat.text,
      'gender': selectedGender.value,
      'noHp': txtNoHp.text,
      'email': txtEmail.text,
    });
  }
}
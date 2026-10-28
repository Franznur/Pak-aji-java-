import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegistrationController extends GetxController {

  final txtNama = TextEditingController();
  final txtAlamat = TextEditingController();
  final txtNoHp = TextEditingController();
  final txtEmail = TextEditingController();


  var selectedGender = ''.obs;

  void sendData() {

    Get.toNamed('/confirm', arguments: {
      'nama': txtNama.text,
      'alamat': txtAlamat.text,
      'gender': selectedGender.value,
      'noHp': txtNoHp.text,
      'email': txtEmail.text,
    });
  }
}
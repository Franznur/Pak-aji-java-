import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pakaji_project/controller/login_clone_controller.dart';
import '../components/textfieldfesnuk.dart';

class Fesnuk extends StatelessWidget {
  Fesnuk({super.key});

  final controller = Get.put(LoginCloneController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo Facebook / Fesnuk
            const Icon(
              Icons.facebook,
              size: 80,
              color: Color(0xFF1877F2),
            ),
            const SizedBox(height: 30),

            // Textfield Username
            MyTextfield(
              myHint: "Masukkan Useraname anda",
              txtController: controller.txtUsername,
              radius: 8,
            ),
            const SizedBox(height: 12),

            // Textfield Password
            MyTextfield(
              myHint: "Kata sandi anda",
              txtController: controller.txtPassword,
              radius: 8,
              isObscure: true,
            ),
            const SizedBox(height: 16),


            // Lupa Password
            TextButton(
              onPressed: () {},
              child: const Text(
                "Lupa kata sandi?",
                style: TextStyle(color: Color(0xFF1877F2)),
              ),
            ),
            const SizedBox(height: 20),


           Obx(
            ()=> controller.isLoading.value
            ? Center(child: CircularProgressIndicator(),)
            : Container(
            margin: const EdgeInsets.symmetric(horizontal: 30),
            width: double.infinity,
            height: 50,
            child: OutlinedButton(
              onPressed: () {
                controller.login();
              },
              child: const Text("Login"),
            ),
          ),
          ),
            
            // Tombol Buat Akun Baru
          ],
        ),
      ),
    );
  }
}
import 'package:pakaji_project/components/MyTextField2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pakaji_project/controller/KalkulatorController.dart';

class Kalkulator extends StatelessWidget {
  Kalkulator({super.key});

  // 1. Pindahkan TextEditingController ke LUAR method build!
  final TextEditingController txtangka1 = TextEditingController();
  final TextEditingController txtangka2 = TextEditingController();

  final controller = Get.put(KalkulatorController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Kalkulator"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            MyTextField2(
              myHint: "input angka 1",
              txtController: txtangka1,
              radius: 10,
            ),
            const SizedBox(height: 10),
            MyTextField2(
              myHint: "input angka 2",
              txtController: txtangka2,
              radius: 10,
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Gunakan double.tryParse agar tidak crash kalau input kosong
                    double val1 = double.tryParse(txtangka1.text) ?? 0.0;
                    double val2 = double.tryParse(txtangka2.text) ?? 0.0;
                    controller.tambah(val1, val2);
                  },
                  child: const Text("+"),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    double val1 = double.tryParse(txtangka1.text) ?? 0.0;
                    double val2 = double.tryParse(txtangka2.text) ?? 0.0;
                    controller.kurang(val1, val2);
                  },
                  child: const Text("-"),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    double val1 = double.tryParse(txtangka1.text) ?? 0.0;
                    double val2 = double.tryParse(txtangka2.text) ?? 0.0;
                    controller.kali(val1, val2);
                  },
                  child: const Text("Kali"),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    double val1 = double.tryParse(txtangka1.text) ?? 0.0;
                    double val2 = double.tryParse(txtangka2.text) ?? 0.0;
                    controller.bagi(val1, val2);
                  },
                  child: const Text(":"),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Obx(
              () => Text(
                "Hasil: ${controller.hasilHitung.value}",
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                txtangka1.clear();
                txtangka2.clear();
                controller.hasilHitung.value = 0.0;
              },
              child: const Text("Reset"),
            ),
          ],
        ),
      ),
    );
  }
}
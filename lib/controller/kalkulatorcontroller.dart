import 'package:get/get.dart'; // <-- KAMU LUPA IMPORT INI!

class KalkulatorController extends GetxController {
  var hasilHitung = 0.0.obs;

  // method tambah kurang kali dan bagi
  void tambah(double angka1, double angka2) {
    double hasilTambah = angka1 + angka2;
    hasilHitung.value = hasilTambah;
    Get.snackbar(
      "hasil jumlah",
      hasilTambah.toString(),
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  void kurang(double angka1, double angka2) {
    double hasilKurang = angka1 - angka2;
    hasilHitung.value = hasilKurang;
    Get.snackbar(
      "hasil pengurangan",
      hasilKurang.toString(),
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  void kali(double angka1, double angka2) {
    double hasilKali = angka1 * angka2;
    hasilHitung.value = hasilKali;
    Get.snackbar(
      "hasil perkalian",
      hasilKali.toString(),
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  void bagi(double angka1, double angka2) {
    // Penanganan pembagian dengan nol supaya tidak error Infinity
    if (angka2 == 0) {
      Get.snackbar(
        "Error",
        "Tidak dapat membagi dengan angka nol!",
        snackPosition: SnackPosition.BOTTOM,
      );
      return;
    }
    double hasilBagi = angka1 / angka2;
    hasilHitung.value = hasilBagi;
    Get.snackbar(
      "hasil pembagian",
      hasilBagi.toString(),
      snackPosition: SnackPosition.BOTTOM,
    );
  }
}
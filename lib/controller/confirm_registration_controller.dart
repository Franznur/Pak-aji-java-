import 'package:get/get.dart';

class ConfirmRegistrationController extends GetxController {
  late String nama;
  late String alamat;
  late String jenisKelamin;
  late String noHp;
  late String email;


  @override
  void onInit() {
    super.onInit();
    final arguments = Get.arguments; // Menangkap data dari RegistrationPage
    
    if (arguments != null) {
      nama = arguments['name'] ?? '';
      alamat = arguments['alamat'] ?? '';
      jenisKelamin = arguments['jenis_kelamin'] ?? '';
      noHp = arguments['no_hp'] ?? '';
      email = arguments['email'] ?? '';
      
    }
  }
}
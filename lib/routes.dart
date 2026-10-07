import 'package:get/get.dart';
import 'pages/registration_page.dart';
import 'pages/confirm_registration_page.dart';
import 'pages/list_produk_pages.dart'; 
import 'pages/detail_produk_page.dart'; // <-- Tambahkan import ini!

class Routes {
  // list pages yang ada di aplikasi
  static const String registration = "/registration";
  static const String confirmRegistration = "/confirmRegistration";
  static const String listProduk = "/listProduk";
  static const String detailProduk = "/detailProduk"; // <-- Tambahkan nama rute ini!

  // kita tampung kedalam array yang akan kita pasang ke main.dart
  static final myPages = [
    GetPage(name: registration, page: () => RegistrationPage()),
    GetPage(name: confirmRegistration, page: () => ConfirmRegistrationPage()),
    GetPage(name: listProduk, page: () => ListProdukPage()),
    GetPage(name: detailProduk, page: () => const DetailProdukPage()), // <-- Tambahkan GetPage ini!
  ];
}
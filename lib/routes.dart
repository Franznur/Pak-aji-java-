import 'package:get/get.dart';
import 'pages/registration_page.dart';
import 'pages/confirm_registration_page.dart';
import 'pages/main_menu_page.dart';
import 'menu/homepage.dart';       // Jangan lupa import HomePage kamu
import 'pages/detail_produk_page.dart'; // Jangan lupa import DetailProdukPage kamu

class Routes {
  static const String registration = "/registration";
  static const String confirmRegistration = "/confirmRegistration";
  static const String listProduk = "/listProduk";
  static const String detailProduk = "/detailProduk";
  static const String mainMenuPage = "/mainMenu"; 

  static final myPages = [
    GetPage(name: registration, page: () => RegistrationPage()),
    GetPage(name: confirmRegistration, page: () => ConfirmRegistrationPage()),
    GetPage(name: mainMenuPage, page: () => MainMenuPage()),
    
    // INI YANG KURANG DARI TADI!
    GetPage(name: listProduk, page: () => HomePage()),
    GetPage(name: detailProduk, page: () => DetailProdukPage()),
  ];
}
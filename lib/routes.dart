import 'package:get/get.dart';
import 'pages/registration_page.dart';
import 'pages/confirm_registration_page.dart';
import 'pages/main_menu_page.dart';
import 'menu/homepage.dart';     
import 'pages/detail_produk_page.dart'; 
import 'menu/historypage.dart';
import 'menu/profilepage.dart';

class Routes {
  static const String registration = "/registration";
  static const String confirmRegistration = "/confirmRegistration";
  static const String listProduk = "/listProduk";
  static const String detailProduk = "/detailProduk";
  static const String mainMenuPage = "/mainMenu"; 
  static const String historyPage = "/history";
  static const String profilePage = "/profile";

  static final myPages = [
    GetPage(name: registration, page: () => RegistrationPage()),
    GetPage(name: confirmRegistration, page: () => ConfirmRegistrationPage()),
    GetPage(name: mainMenuPage, page: () => MainMenuPage()),
    GetPage(name: historyPage, page: () => HistoryPage()),
    GetPage(name: profilePage, page: () => ProfilePage()),

    GetPage(name: listProduk, page: () => HomePage()),
    GetPage(name: detailProduk, page: () => DetailProdukPage()),
  ];
}
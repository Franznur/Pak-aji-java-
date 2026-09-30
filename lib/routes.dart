import 'package:get/get.dart';
import 'pages/registration_page.dart';
import 'pages/confirm_registration_page.dart';

class Routes {
  static const registration = '/registration';
  static const confirmRegistration = '/confirm-registration';

  static final pages = [
    GetPage(
      name: registration,
      page: () => const RegistrationPage(), // sesuaikan dengan class page kamu
    ),
    GetPage(
      name: confirmRegistration,
      page: () => const ConfirmRegistrationPage(), // sesuaikan dengan class page kamu
    ),
  ];
}
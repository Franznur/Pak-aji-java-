import 'package:get/get.dart';

class DetailProdukController extends GetxController {
  late String namaProduk;
  late String harga;
  late String description;
  late String imageUrl;
  late String review;
  late String rating;
  late String namaToko;

  @override
  void onInit() {
    super.onInit();

    final arguments = Get.arguments;

    namaProduk = arguments['namaProduk'];
    harga = arguments['harga'];
    description = arguments['description'];
    imageUrl = arguments['imageUrl'];
    review = arguments['review'];
    rating = arguments['rating'];
    namaToko = arguments['namaToko'];
  }
}
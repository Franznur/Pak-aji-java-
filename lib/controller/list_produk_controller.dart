import '../models/produk_model.dart';
import 'package:get/get.dart';

class ListProdukController extends GetxController {
  List<ProdukModel> listProduk = [
    ProdukModel(
      namaProduk: "Samsung Galaxy Fold",
      harga: "10 juta",
      description: "Smartphone terbaru dari Samsung dengan layar lipat",
      imageUrl: "https://d12grbvu52tm8q.cloudfront.net/AHI/Compro/1765851298602_732710f2-1935-489a-8f14-4a3ab2cad495.png",
      review: "Sangat bagus dan inovatif",
      rating: "4.5",
      namaToko: "Toko Elektronik"
    ),
    ProdukModel(
      namaProduk: "iPhone 20",
      harga: "25 juta",
      description: "Smartphone terbaru dari Apple dengan performa tinggi",
      imageUrl: "https://d12grbvu52tm8q.cloudfront.net/AHI/Compro/1765851298602_732710f2-1935-489a-8f14-4a3ab2cad495.png",
      review: "Desain yang elegan dan kinerja yang luar biasa",
      rating: "4.8",
      namaToko: "Toko Elektronik"
    ),
    ProdukModel(
      namaProduk: "Laptop ROG",
      harga: "30 juta",
      description: "Laptop gaming dengan spesifikasi tinggi",
      imageUrl: "https://d12grbvu52tm8q.cloudfront.net/AHI/Compro/1765851298602_732710f2-1935-489a-8f14-4a3ab2cad495.png",
      review: "Sangat cocok untuk gaming dan pekerjaan berat",
      rating: "4.7",
      namaToko: "Toko Komputer"
    ),
    ProdukModel(
      namaProduk: "PS 5",
      harga: "8 juta",
      description: "Konsol gaming terbaru dari Sony",
      imageUrl: "https://d12grbvu52tm8q.cloudfront.net/AHI/Compro/1765851298602_732710f2-1935-489a-8f14-4a3ab2cad495.png",
      review: "Grafik yang luar biasa dan pengalaman bermain yang imersif",
      rating: "4.6",
      namaToko: "Toko Game"
    ),
    ProdukModel(
      namaProduk: "Smart TV Android",
      harga: "10 juta",
      description: "Televisi pintar dengan sistem operasi Android",
      imageUrl: "https://d12grbvu52tm8q.cloudfront.net/AHI/Compro/1765851298602_732710f2-1935-489a-8f14-4a3ab2cad495.png",
      review: "Banyak aplikasi yang tersedia dan tampilan yang tajam",
      rating: "4.4",
      namaToko: "Toko Elektronik"
    ),

    ProdukModel(
      namaProduk: "Kamera DSLR",
      harga: "15 juta",
      description: "Kamera profesional untuk fotografi dan videografi",
      imageUrl: "https://d12grbvu52tm8q.cloudfront.net/AHI/Compro/1765851298602_732710f2-1935-489a-8f14-4a3ab2cad495.png",
      review: "Hasil foto yang tajam dan kualitas video yang tinggi",
      rating: "4.9",
      namaToko: "Toko Kamera"
    ),
    
    ProdukModel(
      namaProduk: "Headphone Wireless",
      harga: "2 juta",
      description: "Headphone nirkabel dengan kualitas suara yang jernih",
      imageUrl: "https://d12grbvu52tm8q.cloudfront.net/AHI/Compro/1765851298602_732710f2-1935-489a-8f14-4a3ab2cad495.png",
      review: "Nyaman digunakan dan baterai tahan lama",
      rating: "4.3",
      namaToko: "Toko Audio"
    ),

    ProdukModel(
      namaProduk: "Smartwatch",
      harga: "3 juta",
      description: "Jam tangan pintar dengan berbagai fitur kesehatan",
      imageUrl: "https://d12grbvu52tm8q.cloudfront.net/AHI/Compro/1765851298602_732710f2-1935-489a-8f14-4a3ab2cad495.png",
      review: "Memantau kesehatan dengan akurat dan desain yang stylish",
      rating: "4.5",
      namaToko: "Toko Gadget"
    ),
    // dll
  ].obs ;
}
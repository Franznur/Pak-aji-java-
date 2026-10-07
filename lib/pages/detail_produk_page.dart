import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../models/produk_model.dart'; // Sesuaikan lokasi import model-mu!

class DetailProdukPage extends StatelessWidget {
  const DetailProdukPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Menerima data produk dari halaman sebelumnya
    final ProdukModel produk = Get.arguments;

    return Scaffold(
      backgroundColor: Colors.grey[100],
      // Tombol melayang di bagian bawah halaman
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(16),
        color: Colors.white,
        child: ElevatedButton(
          onPressed: () {
            Get.snackbar(
              "Alhamdulillah", 
              "Kamu milih ${produk.namaProduk}, dana masuk bosskuuhh",
              snackPosition: SnackPosition.BOTTOM,
              backgroundColor: Colors.green,
              colorText: Colors.white,
            );
          },
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            backgroundColor: Colors.blueAccent,
          ),
          child: const Text(
            "Beli maszzeehh", 
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ),
      // CustomScrollView untuk efek header gambar yang bisa di-scroll
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300,
            pinned: true,
            backgroundColor: Colors.white,
            foregroundColor: Colors.black, // Warna tombol back
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                produk.imageUrl,
                fit: BoxFit.cover,
                // Kalau link gambarmu mati/error, akan muncul icon ini
                errorBuilder: (context, error, stackTrace) => Container(
                  color: Colors.grey[300],
                  child: const Icon(Icons.image_not_supported, size: 100, color: Colors.grey),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              ),
              // Menarik container sedikit ke atas agar menumpuk di atas gambar
              transform: Matrix4.translationValues(0.0, -20.0, 0.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          produk.namaProduk,
                          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        decoration: BoxDecoration(
                          color: Colors.orange[50],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          children: [
                            const Icon(Icons.star, color: Colors.orange, size: 18),
                            const SizedBox(width: 4),
                            Text(
                              produk.rating, 
                              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.orange),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Rp ${produk.harga}",
                    style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.blueAccent),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      const Icon(Icons.storefront, color: Colors.grey, size: 20),
                      const SizedBox(width: 8),
                      Text(produk.namaToko, style: const TextStyle(fontSize: 15, color: Colors.grey)),
                    ],
                  ),
                  const Divider(height: 40, thickness: 1),
                  const Text(
                    "Deskripsi Produk", 
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    produk.description, 
                    style: const TextStyle(fontSize: 15, height: 1.5, color: Colors.black87),
                  ),
                  const SizedBox(height: 25),
                  const Text(
                    "Ulasan Pembeli", 
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.grey[50],
                      border: Border.all(color: Colors.grey[200]!),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Icon(Icons.format_quote, color: Colors.grey, size: 24),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Text(
                            produk.review,
                            style: const TextStyle(fontStyle: FontStyle.italic, color: Colors.black54, fontSize: 14),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20), // Memberi jarak kosong di bawah
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
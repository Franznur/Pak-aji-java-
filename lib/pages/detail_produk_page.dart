import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pakaji_project/controller/detail_produk_controller.dart';

class DetailProdukPage extends StatelessWidget {
  DetailProdukPage({super.key});

  // Inisialisasi controller sesuai kode pertama kamu
  final controller = Get.put(DetailProdukController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Produk"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 78, 185, 20),
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            
              Image.network(   //nggo gambar
                  controller.imageUrl,
                  height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    width: double.infinity,
                    height: 200,
                    color: Colors.grey[200],
                    child: const Center(
                      child: Text("Gambar tidak bisa dimuat"),
                    ),
                  );
                },
              ),

              const SizedBox(height: 16),

              //jeneng produk e                    
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      controller.namaProduk,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      const Icon(Icons.star, color: Colors.amber, size: 20),
                      const SizedBox(width: 4),
                      Text(
                        controller.rating,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 8),

              // Nama Toko
              Row(
                children: [
                  const Icon(Icons.store, size: 18, color: Colors.grey),
                  const SizedBox(width: 6),
                  Text(
                    controller.namaToko,
                    style: const TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                ],
              ),
              const SizedBox(height: 12),

              // Harga Produk
              Text(
                controller.harga,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent,
                ),
              ),
              const Divider(height: 24, thickness: 1),

              // Deskripsi Produk
              const Text(
                "Deskripsi Produk",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 6),
              Text(
                controller.description,
                style: const TextStyle(fontSize: 14, height: 1.4),
              ),
              const SizedBox(height: 16),

                                                                  //    < Ulasan wong tuku
              const Text(
                "Ulasan Pembeli",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 6),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  "\"${controller.review}\"",
                  style: const TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.black87,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(16),
        color: Colors.white,
        child: ElevatedButton(
          onPressed: () {
            Get.snackbar(
              "Informasi",
              "Anda memilih produk ${controller.namaProduk}",
              snackPosition: SnackPosition.BOTTOM,
              backgroundColor: Colors.green, 
              colorText: Colors.white,
            );
          },
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 14),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            backgroundColor: Colors.green, //
          ),
          child: const Text(
            "Beli Sekarang",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
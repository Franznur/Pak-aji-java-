import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/list_produk_controller.dart';
import '../routes.dart';

class ListProdukPage extends StatelessWidget {
  ListProdukPage({super.key});

  final controller = Get.put(ListProdukController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 235, 238, 234),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 255, 34),
        title: const Text("TokoMasRyan"),
      ),
      body: Obx(
        () => ListView.builder(
          itemCount: controller.listProduk.length, // nggo jumlah keseluruhan (7)
          itemBuilder: (context, index) {          // nggo jumlah per item (0, 1, 2, 3,)
            final produk = controller.listProduk[index]; // <hasil teko 4 ne kanggo rendering
            return Dismissible(
                key: ValueKey(produk.namaProduk),
                direction: DismissDirection.startToEnd,
                background: Container(
                  color: Colors.red,
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(left: 20),
                  child: const Icon(Icons.delete, color: Colors.white),
                ),
                child: Card(
                  color: const Color.fromARGB(255, 92, 248, 131),                   // < iki nggo warna card
                  margin: const EdgeInsets.only(         // < iki nggo jarak tepi / pinggiran
                    left: 10,  
                    right: 10,  
              top: 5,    
              bottom: 5,  
            ),
            elevation: 2,                         // < iki bayangan
            child: ListTile(                      //<iki nggo ngatur tampilan list item
              leading: Image.network(             // <leading otomatis ndokok ing kiri
                produk.imageUrl,
                width: 50,
                height: 50,
                fit: BoxFit.cover, //< ngatur gambar ben pas
                errorBuilder: (context, error, stackTrace) => const Icon(Icons.error),
              ),
              title: Text(produk.namaProduk),
              subtitle: Text("Rp ${produk.harga}"),
              trailing: Text(produk.rating),      //< otomatis didokok pinggir kanan card
              onTap: () {
                 Get.toNamed(
                    Routes.detailProduk,
                    arguments: {
                      'namaProduk': produk.namaProduk,
                      'harga': produk.harga,
                      'description': produk.description,
                      'imageUrl': produk.imageUrl,
                      'review': produk.review,
                      'rating': produk.rating,
                      'namaToko': produk.namaToko,
                    },
                );
              },
            ),
            )
          );
        },
      ),
    ),
    );
  }
}
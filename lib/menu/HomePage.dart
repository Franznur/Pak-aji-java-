import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/list_produk_controller.dart';
import '../routes.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  // Panggil controller list produk di sini
  final controller = Get.put(ListProdukController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 235, 238, 234),
      appBar: AppBar(
        title: const Text('Home TokoMasRyan'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 78, 185, 20),
        foregroundColor: Colors.white,
      ),
      body: Obx(
        () => ListView.builder(
          itemCount: controller.listProduk.length,
          itemBuilder: (context, index) {
            final produk = controller.listProduk[index];
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
                color: const Color.fromARGB(255, 92, 248, 131),
                margin: const EdgeInsets.only(
                  left: 10,
                  right: 10,
                  top: 5,
                  bottom: 5,
                ),
                elevation: 2,
                child: ListTile(
                  leading: Image.network(
                    produk.imageUrl,
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) =>
                        const Icon(Icons.error),
                  ),
                  title: Text(produk.namaProduk),
                  subtitle: Text("Rp ${produk.harga}"),
                  trailing: Text(produk.rating),
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
              ),
            );
          },
        ),
      ),
    );
  }
}
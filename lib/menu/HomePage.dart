import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/list_produk_controller.dart';
import '../routes.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final controller = Get.put(ListProdukController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "TOKOPEDIUM",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 0, 255, 55),
        foregroundColor: Colors.white,
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        height: 200,
        child: Obx(
          () => ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: controller.listProduk.length,
            itemBuilder: (context, index) {
              final produk = controller.listProduk[index];

              return Container(
                width: 180,
                child: Card(
                  child: InkWell(
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

                    child: ListTile(
            leading: Icon(
              Icons.shopping_bag,
              color: const Color.fromARGB(255, 15, 233, 7),
              size: 32, // Perbesar dikit biar seimbang
                      ),
                      title: Text(
              produk.namaProduk,
              maxLines: 1,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
                      ),
                      subtitle: Text(
              produk.harga,
              style: const TextStyle(
                color: Color.fromARGB(255, 1, 245, 29),
                fontWeight: FontWeight.bold,                        ),
                      ),
                      trailing: const Icon(
              Icons.arrow_forward_ios, // Ganti panah biar lebih modern
              size: 16,
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
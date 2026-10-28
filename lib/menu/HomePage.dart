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

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 0, 255, 55),
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile'),
              onTap: () {
                Get.toNamed(Routes.profilePage);
              },
            ),
            ListTile(
              leading: Icon(Icons.history),
              title: Text('History'),
              onTap: () {
                Get.toNamed(Routes.historyPage);
              },
            ),
          ],
        ),
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
                        color: Colors.blue,
                      ),
                      title: Text(
                        produk.namaProduk,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        produk.harga,
                        style: TextStyle(
                          color: Colors.blue,
                        ),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward,
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
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pakaji_project/controller/valoController.dart';

class HomePageValo extends StatelessWidget {
  HomePageValo({super.key});

  final controller = Get.put(ListAgentController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F7FA),

      appBar: AppBar(
        title: const Text(
          "VALORANT AGENTS",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            letterSpacing: 1,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 20, 234, 170),
        foregroundColor: Colors.white,
        elevation: 0,
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(24),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 20, 234, 170),
                  Color(0xFF00BFA5),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Halo, Selamat Datang!",
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 14,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  "Pilih Agent Favoritmu",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  "Temukan Agent terbaik di Valorant.",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),

          // Judul Agent
          Padding(
            padding: const EdgeInsets.fromLTRB(18, 24, 18, 12),
            child: Row(
              children: [
                const Icon(
                  Icons.gamepad,
                  color: Color(0xFF00A887),
                  size: 25,
                ),
                const SizedBox(width: 10),

                const Expanded(
                  child: Text(
                    "Agent Valorant",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF263238),
                    ),
                  ),
                ),

                Obx(
                  () => Text(
                    "${controller.listAgent.value?.length ?? 0} Agent",
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 13,
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Daftar Agent Horizontal
          SizedBox(
            height: 260,
            child: Obx(() {
              if (controller.isLoading.value) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }

              final dataAgent = controller.listAgent.value ?? [];

              return ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 14),
                itemCount: dataAgent.length,

                itemBuilder: (context, index) {
                  final agent = dataAgent[index];

                  return Container(
                    width: 190,
                    margin: const EdgeInsets.symmetric(
                      horizontal: 5,
                      vertical: 5,
                    ),

                    child: Card(
                      elevation: 5,
                      shadowColor: Colors.black12,
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      clipBehavior: Clip.antiAlias,

                      child: Padding(
                        padding: const EdgeInsets.all(14),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Gambar Agent
                            Container(
                              height: 100,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: const Color(0xFFE0F7F1),
                                borderRadius: BorderRadius.circular(15),
                              ),

                              child: Image.network(
                                agent.displayIcon,
                                fit: BoxFit.contain,
                                errorBuilder: (context, error, stackTrace) {
                                  return const Icon(
                                    Icons.person,
                                    size: 55,
                                    color: Color(0xFF00A887),
                                  );
                                },
                              ),
                            ),

                            const SizedBox(height: 14),

                            // Nama Agent
                            Text(
                              agent.displayName,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF263238),
                              ),
                            ),

                            const SizedBox(height: 8),

                            // Role Agent
                            Text(
                              agent.role?.displayName.name ?? "Unknown",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF00A887),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              );
            }),
          ),
        ],
      ),
    );
  }
}
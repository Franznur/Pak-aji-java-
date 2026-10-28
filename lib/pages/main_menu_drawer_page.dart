import 'package:flutter/material.dart';
import '../controller/main_menu_drawer_controller.dart';
import 'package:get/get.dart';

class MainMenuDrawer extends StatelessWidget {
  MainMenuDrawer({super.key});

  final menuDrawerController = Get.put(MainMenuDrawerController(),);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        appBar: AppBar(
          title: Text(
            "TOKOPEDIUM BETA 1.0",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: const Color.fromARGB(255, 161, 255, 130)),

          endDrawer: NavigationDrawer(
            selectedIndex: menuDrawerController.selectedIndex.value,

          onDestinationSelected: (index) {
            menuDrawerController.changeIndex(index);
            Navigator.pop(context);
          },

          children: [
            NavigationDrawerDestination(
              icon: Icon(Icons.person),
              label: Text("Profile"),
            ),
            NavigationDrawerDestination(
              icon: Icon(Icons.history),
              label: Text("History"),
            ),
            NavigationDrawerDestination(
              icon: Icon(Icons.home),
              label: Text("Home"),
            ),
          ],
        ),

        body: IndexedStack(
          index: menuDrawerController.selectedIndex.value,
          children: menuDrawerController.listPages,
        ),
      ),
    );
  }
}
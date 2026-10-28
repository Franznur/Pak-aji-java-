import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../menu/ProfilePage.dart';
import '../menu/HistoryPage.dart';
import '../menu/HomePage.dart';

class MainMenuDrawerController extends GetxController{
  final RxInt selectedIndex = 0.obs;

  void changeIndex(int index) {
    selectedIndex.value = index;
  }

  List<Widget> listPages = [ProfilePage(), HistoryPage(), HomePage()];
}
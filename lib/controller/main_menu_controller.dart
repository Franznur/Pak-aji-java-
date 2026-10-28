import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../menu/HomePage.dart';
import '../menu/HistoryPage.dart'; 
import '../menu/ProfilePage.dart';


class MainMenuController extends GetxController {
  final RxInt SelectedIndex = 0.obs;

    List<Widget> Listpages = [HomePage(), HistoryPage(), ProfilePage()];
  
  
  void changePage(int index) {
    SelectedIndex.value = index;
  }

}
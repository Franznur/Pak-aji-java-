import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:pakaji_project/models/valo_model.dart';

class ListAgentController extends GetxController {

  var isLoading = false.obs;

  var listAgent = <Datum>[].obs;

  // Method hit API
  Future<void> getListAgent() async {
    try {
      isLoading.value = true;

      final url = Uri.parse(
        "https://valorant-api.com/v1/agents",
      );

      final response = await http.get(url);

      if (response.statusCode == 200) {
        final data = valoFromJson(response.body);

        listAgent.value = data.data;

      } else {
        Get.snackbar(
          "Gagal",
          "Cek internet connection",
        );
      }

    } catch (e) {
      Get.snackbar("Gagal", e.toString());
      print("Error: $e");

    } finally {
      isLoading.value = false;
    }
  }

  @override
  void onInit() {
    super.onInit();
    getListAgent();
  }
}
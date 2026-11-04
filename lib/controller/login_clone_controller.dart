import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:pakaji_project/routes.dart';
class LoginCloneController extends GetxController {

    TextEditingController txtUsername = TextEditingController();
    TextEditingController txtPassword = TextEditingController();

    var isLoading = false.obs;

    //tambah API
    void login() async {
      if(txtUsername.text.toString().isEmpty || txtPassword.text.toString().isEmpty){
        
        Get.snackbar('Error', 'Username dan Password tidak boleh kosong');

      }else{

        try{

            isLoading.value = true;
            final url = Uri.parse("https://mediadwi.com/api/latihan/login");

            final response = await http.post(url, body: {
              'username': txtUsername.text.toString(),
              'password': txtPassword.text.toString(),
            });

          isLoading.value = false;

          if(response.statusCode == 200){
             
             final data = jsonDecode(response.body);
             if(data['status'] == true){
                Get.snackbar('Success', data['message']);
                Get.offNamed(Routes.mainmenuDrawerPage);
             }else{
                Get.snackbar('gagal', data['message']);
             }
             
             
          }else{
            Get.snackbar('Error', 'Terjadi kesalahan: koneksi');
              
        }} catch (e) {
          isLoading.value = false;
          Get.snackbar('gagal', e.toString());
        }


        }

      }
    }


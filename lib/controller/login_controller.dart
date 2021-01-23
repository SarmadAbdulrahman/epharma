import 'package:epharmalyical/http/request.dart';
import 'package:epharmalyical/http/url.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class LoginController extends GetxController {
  TextEditingController emailTextController;
  TextEditingController passwordTextController;
 // var token="".obs;


  @override
  void onInit() {
    emailTextController = TextEditingController();
    passwordTextController = TextEditingController();
    super.onInit();
  }

  void apiLogin() async {
    Get.dialog(Center(child: CircularProgressIndicator()),
        barrierDismissible: false);
    Request request = Request(url: urlLogin, body: {
       'mobile': emailTextController.text,
       'password': passwordTextController.text
    });
    request.post().then((value) {
      if(value.statusCode==200){

        Get.back();
        Get.offNamed('/homeView');
      }

      else {
        Get.back();
        Get.dialog(
            Center(child:
            AlertDialog(
              title: new Text("Warring"),
              content: new Text("check your password or moible"),
            )

        ));

      }

    }).catchError((onError) {});
  }

  @override
  void onClose() {
    emailTextController?.dispose();
    passwordTextController?.dispose();
    super.onClose();
  }

















}
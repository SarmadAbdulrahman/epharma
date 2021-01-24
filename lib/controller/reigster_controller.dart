import 'dart:io';

import 'package:epharmalyical/http/request.dart';
import 'package:epharmalyical/http/url.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';


class RegisterController extends GetxController {
  TextEditingController emailTextController;
  TextEditingController UserNameTextController;
  TextEditingController passwordTextController;
  String PointType;
  String ImageSataus;
  File image;







  Future<void> getImage() async {
    final pickedFile = await ImagePicker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      image = File(pickedFile.path);
      File imagePath = File(pickedFile.path);
      update();
    } else {
     // print('No image selected.');
      ImageSataus='No image selected.';
    }
  }





  @override
  void onInit() {
    emailTextController = TextEditingController();
    UserNameTextController = TextEditingController();
    passwordTextController = TextEditingController();
    PointType ="";
   // chooseImage();
    super.onInit();
  }





  void apiRegister() async {
  //  print(PointType);
    Get.dialog(Center(child: CircularProgressIndicator()),
        barrierDismissible: false);
    Request request = Request(url: urlRegister, body: {
      'mobile': emailTextController.text,
      'username': UserNameTextController.text,
      'password': passwordTextController.text,
      'name':UserNameTextController.text,
      'address':UserNameTextController.text,
      'latitude':'32.2',
      'longitude':'32.2',
      'nearPoint':'tsts',
      'PointType':PointType,
      'email':'${emailTextController.text}@gmail.com'
    });
  //  print('${emailTextController}@gmail.com');
    request.post().then((value) {
      if(value.statusCode==200){

        Get.back();
        Get.offNamed('/homeView');
      }

      else {
        print(value.body);
        Get.back();
        Get.dialog(
            Center(child:
            AlertDialog(
              title: new Text("Warring"),
              content: new Text("please re-check again"),
            )

            ));

      }

    }).catchError((onError) {});
  }

  @override
  void onClose() {
    emailTextController?.dispose();
    UserNameTextController?.dispose();
    passwordTextController?.dispose();
    super.onClose();
  }

















}
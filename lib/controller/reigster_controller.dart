import 'dart:convert';
import 'dart:io';

import 'package:epharmalyical/http/request.dart';
import 'package:epharmalyical/http/url.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';


class RegisterController extends GetxController {
  TextEditingController emailTextController;
  TextEditingController UserNameTextController;
  TextEditingController passwordTextController;
  String PointType;
  String ImageSataus;
  File image,CompresIamge;
  String base64Image;




  // getImageFromCamera


  Future<void> getImage() async {
    final pickedFile = await ImagePicker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      image = File(pickedFile.path);
      File imagePath = File(pickedFile.path);
      CompresIamge=  await compressFile(image);
      base64Image = base64Encode(CompresIamge.readAsBytesSync());
      update();
    } else {
     // print('No image selected.');

    }
  }









  Future<void> getImageFromCamera() async {
    final pickedFile = await ImagePicker.pickImage(source: ImageSource.camera);

    if (pickedFile != null) {
      image = File(pickedFile.path);
      File imagePath = File(pickedFile.path);
      CompresIamge=  await compressFile(image);
      base64Image = base64Encode(CompresIamge.readAsBytesSync());
      update();
    } else {
      // print('No image selected.');

    }
  }





  Future<File> compressFile(File file) async {
    final filePath = file.absolute.path;

    // Create output file path
    // eg:- "Volume/VM/abcd_out.jpeg"
    final lastIndex = filePath.lastIndexOf(new RegExp(r'.jp'));
    final splitted = filePath.substring(0, (lastIndex));
    final outPath = "${splitted}_out${filePath.substring(lastIndex)}";
    var result = await FlutterImageCompress.compressAndGetFile(
      file.absolute.path, outPath,
      quality: 25,
    );



    return result;
  }





  @override
  void onInit() {
    emailTextController = TextEditingController();
    UserNameTextController = TextEditingController();
    passwordTextController = TextEditingController();

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







  void apiUploadItem() async {
    //  print(PointType);
    Get.dialog(Center(child: CircularProgressIndicator()),
        barrierDismissible: false);
    Request request = Request(url: StoreItem, body: {
      'price': emailTextController.text,
      'name':UserNameTextController.text,
      'desc':UserNameTextController.text,
      'cat_id':'1',
      'drag_id':'1',
      'image_path':base64Image,
    });
    //  print('${emailTextController}@gmail.com');
    request.post().then((value) {
      if(value.statusCode==200){

        Get.back();
        getImageFromCamera();
        Get.dialog(
            Center(child:
            AlertDialog(
              title: new Text("Success"),
              content: new Text("Item add Successfully"),
            )

            ));





      }

      else {
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
    image;
    super.onClose();
  }

















}
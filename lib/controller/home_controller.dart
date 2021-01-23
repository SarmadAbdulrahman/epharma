import 'dart:convert';
import 'package:epharmalyical/http/request.dart';
import 'package:epharmalyical/http/url.dart';
import 'package:epharmalyical/model/Product.dart';
import 'package:epharmalyical/model/user_list_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class HomeController extends GetxController {
  var userListData = List<Data>().obs;
  var Products=List<DrugStore>().obs;

  var item = 0.obs;
  @override
  void onInit() {
   // _apiGetUserList();
    _apiProductList();
    super.onInit();
  }

  void _apiGetUserList() async {
    Future.delayed(
        Duration.zero,
            () => Get.dialog(Center(child: CircularProgressIndicator()),
            barrierDismissible: false));

    Request request = Request(url: urlUserList, body: null);
    request.get().then((value) {
      UserListModel userListModel =
      UserListModel.fromJson(json.decode(value.body));
      userListData.value = userListModel.data;
      Get.back();
    }).catchError((onError) {
      print(onError);
    });
  }





  void _apiProductList() async {
    Future.delayed(
        Duration.zero,
            () => Get.dialog(Center(child: CircularProgressIndicator()),
            barrierDismissible: false));

    Request request = Request(url: products, body: null);
    request.get().then((value) {
     // print(value.body);
      Product _Product =
      Product.fromJson(json.decode(value.body));
      Products.value =_Product.drugStores;
      Get.back();
    }).catchError((onError) {
      print(onError);
    });
  }













  void deleteItem(int index) {
    userListData.removeAt(index);
  }
}
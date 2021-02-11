
import 'dart:convert';

import 'package:epharmalyical/http/request.dart';
import 'package:epharmalyical/http/url.dart';
import 'package:epharmalyical/model/Items.dart';
import 'package:epharmalyical/model/Order.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OrderController extends GetxController
{

  var orders=List<Order>().obs;


  void apiItemsList() async {
    Future.delayed(
        Duration.zero,
            () => Get.dialog(Center(child: CircularProgressIndicator()),
            barrierDismissible: false));

    Request request = Request(url: OrdersEnd, body: null);
    request.get().then((value) {
      Orders _Order = Orders.fromJson(json.decode(value.body));
      orders.value =_Order.orders;
      Get.back();
    }).catchError((onError) {
      print(onError);
    });
  }





  Future<void> getData() async {

    apiItemsList();

  }





  @override
  void onInit() {
    // _apiGetUserList();
    // _apiProductList();
    apiItemsList();
    super.onInit();
  }






}
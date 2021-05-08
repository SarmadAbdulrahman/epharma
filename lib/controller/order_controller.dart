
import 'dart:convert';
import 'package:epharmalyical/http/request.dart';
import 'package:epharmalyical/http/url.dart';
import 'package:epharmalyical/model/Order.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OrderController extends GetxController
{

  var orders=List<Order>().obs;
  TextEditingController editingController;
  DateTime DataTimes;



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






  void apiApproveOrder(currentItemId,DataTimes) async {

    // print(id);
    //  print(PointType);
    Get.dialog(Center(child: CircularProgressIndicator()),
        barrierDismissible: false);
    Request request = Request(url: ApproveOrder, body: {
      'currentItemId': currentItemId,
      'DataTimes': DataTimes.toString(),
      // 'desc':UserNameTextController.text,

    });

    request.post().then((value) {
      if(value.statusCode==200){

        Get.back();

        Get.dialog(
            Center(child:
            AlertDialog(
              title: new Text("Success"),
              content: new Text("Order Aprroved"),
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

    }).catchError((onError) {

      print(onError);
    });

  }








  Future<void> getData() async {

    apiItemsList();

  }







  void apiSearchItems(text) async {
    Future.delayed(
        Duration.zero,
            () => Get.dialog(Center(child: CircularProgressIndicator()),
            barrierDismissible: false));

    Request request = Request(url: OrdersEnd, body:null,query: "?name="+text);
    request.get().then((value) {
      Orders _Order = Orders.fromJson(json.decode(value.body));
      orders.value =_Order.orders;
      // print(value.body);
      Get.back();
    }).catchError((onError) {
      print(onError);
    });
  }






  @override
  void onInit() {
    // _apiGetUserList();
    // _apiProductList();
    DataTimes=DateTime.now();
    editingController = TextEditingController();
    apiItemsList();
    super.onInit();
  }






}
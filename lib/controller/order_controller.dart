
import 'dart:convert';
import 'package:epharmalyical/http/request.dart';
import 'package:epharmalyical/http/url.dart';
import 'package:epharmalyical/model/Activates.dart';
import 'package:epharmalyical/model/Order.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OrderController extends GetxController
{

  var orders=List<Order>().obs;
  var activates=List<Activate>().obs;
  TextEditingController editingController;
  DateTime DataTimes;
  var ActivityId;

  OrderController();
  OrderController.overloadedContructor(int cc){
   // print(cc);
   this.ActivityId=cc;
   // print(this.ActivityId);
  }

  void apiItemsList() async {
    Future.delayed(
        Duration.zero,
            () => Get.dialog(Center(child: CircularProgressIndicator()),
            barrierDismissible: false));

    Request request = Request(url: OrdersEnd, body: null);
    request.get().then((value) {
      Orders _Order = Orders.fromJson(json.decode(value.body));
      orders.value =_Order.orders;
  //    print(value.body);
      Get.back();
    }).catchError((onError) {
      print(onError);
    });
  }




  void apiOrderDetailsList() async {
   // var cc=this.ActivityId;
   // print(cc);
    var _localStorage =  await SharedPreferences.getInstance();
   var cc= _localStorage.get('orderIds');
  //  print(cc);
    Future.delayed(
        Duration.zero,
            () => Get.dialog(Center(child: CircularProgressIndicator()),
            barrierDismissible: false));

    Request request = Request(url: ActivatesEnd, body: null,query:"?ActivatyId=$cc" );
    request.get().then((value) {
    //  print(value.body);
      Activates _activates = Activates.fromJson(json.decode(value.body));
      activates.value=_activates.activates;

      Get.back();
    }).catchError((onError) {
      Get.back();
      print(onError);
    });
  }






  void apiApproveOrder(currentItemId,DataTimes) async {

     print(currentItemId);
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




  Future<void> getOrderDetailsList() async {

    apiOrderDetailsList();

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
    apiOrderDetailsList();
    DataTimes=DateTime.now();
    editingController = TextEditingController();
    apiItemsList();
    super.onInit();
  }






}
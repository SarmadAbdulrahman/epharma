
import 'dart:convert';
import 'dart:math';

import 'package:epharmalyical/http/request.dart';
import 'package:epharmalyical/http/url.dart';
import 'package:epharmalyical/model/Items.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ItemController extends GetxController
{

  var items=List<Item>().obs;
  var counter=List<int>().obs;
  double InvoicePice=0;
  TextEditingController editingController;


  void apiItemsList() async {
    Future.delayed(
        Duration.zero,
            () => Get.dialog(Center(child: CircularProgressIndicator()),
            barrierDismissible: false));

    Request request = Request(url: itemsEnd, body: null);
    request.get().then((value) {
      Items _Product = Items.fromJson(json.decode(value.body));
      items.value =_Product.items;
      Get.back();
    }).catchError((onError) {
    //  print(onError);
    });
  }





  Future<void> getData() async {

    apiItemsList();

  }




  void AddMethod(Index)  {




    this.items[Index].counter=this.items[Index].counter+1;
    var one = double.parse(this.items[Index].price);
    this.items[Index].Totalprice=(one*(this.items[Index].counter)).toString();
    var Two = double.parse(this.items[Index].Totalprice);
    InvoicePice=this.items[Index].InvoicePice+Two;
    update();

  }


  void minMethod(Index)  {



    this.items[Index].counter=this.items[Index].counter-1;
    var one = double.parse(this.items[Index].price);
    this.items[Index].Totalprice=(one*(this.items[Index].counter)).toString();
    var Two = double.parse(this.items[Index].Totalprice);
    InvoicePice=this.items[Index].InvoicePice+Two;
    update();



  }







  void apiSearchItems(text) async {
    Future.delayed(
        Duration.zero,
            () => Get.dialog(Center(child: CircularProgressIndicator()),
            barrierDismissible: false));

    Request request = Request(url: GetItemsBySearch, body:null,query: "?name="+text);
    request.get().then((value) {
      Items _Product = Items.fromJson(json.decode(value.body));
      items.value =_Product.items;
     // print(value.body);
      Get.back();
    }).catchError((onError) {
      print(onError);
    });
  }










@override
  void onInit() {

  editingController = TextEditingController();
    // _apiGetUserList();
   // _apiProductList();
    apiItemsList();
    super.onInit();
  }






}
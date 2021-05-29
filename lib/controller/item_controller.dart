
import 'dart:convert';
import 'dart:math';

import 'package:epharmalyical/http/request.dart';
import 'package:epharmalyical/http/url.dart';
import 'package:epharmalyical/model/Items.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';



class Orders {
  final String itemName;
  final String itemQun;
  final String itemPrice;

  Orders({this.itemName, this.itemQun, this.itemPrice});
  Map<String, dynamic> toJson() => _ordersToJson(this);

  Map<String, dynamic> _ordersToJson(Orders instance) => <String, dynamic>{
    'itemName': instance.itemName,
    'itemQun': instance.itemQun,
    'itemPrice': instance.itemPrice,
  };




}



class ItemController extends GetxController
{


  Map<String, dynamic> _ordersToJson(Orders instance) => <String, dynamic>{
    'itemName': instance.itemName,
    'itemQun': instance.itemQun,
    'itemPrice': instance.itemPrice,
  };






  var items=List<Item>().obs;
  var counter=List<int>().obs;
 // var order=[Item(id:00,counter:0)];

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
    this.InvoicePice=this.InvoicePice+Two;
    update();

  }


  void minMethod(Index)  {



    this.items[Index].counter=this.items[Index].counter-1;
    var one = double.parse(this.items[Index].price);
    this.items[Index].Totalprice=(one*(this.items[Index].counter)).toString();
    var Two = double.parse(this.items[Index].Totalprice);
    this.InvoicePice=this.InvoicePice-Two;
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





  //





  void apiSendOrder(cc) async {

    List<dynamic>js=[];
    List<Orders> itemList = <Orders>[
      for(int i=1;i<cc.length;i++)
       if(cc[i].counter>=1)
          Orders(itemName: cc[i].name, itemQun: cc[i].counter.toString(), itemPrice:cc[i].id.toString()),

    ];


    print("Item lenght");
    print(itemList.length);
    for(int z=0;z<itemList.length;z++){



      var cc=_ordersToJson(itemList[z]);

        js.add(cc);



     // print(cc);
    }

   // print(jsonEncode(js.toList()));
    var _localStorage =  await SharedPreferences.getInstance();
    var Role=_localStorage.get('token');
    Get.dialog(Center(child: CircularProgressIndicator()),
        barrierDismissible: false);
    Request request = Request(url: urlPostOrder, body: {
      'token':Role,
      'packet':jsonEncode(js.toList()),
      //'password':""
    });
    print(request.body);
    request.post().then((value) {
      if(value.statusCode==200){

        // print(value.body);

       Get.back();


        Get.dialog(
            Center(child:
            AlertDialog(
              title: new Text("Order Done"),
              content: new Text("your order has been done"),
            )

            ));


         // Get.offNamed('/homeView');
        }


      else {
       // print(value.body);
        Get.back();
        Get.dialog(
            Center(child:
            AlertDialog(
              title: new Text("warrning"),
              content: new Text("please try again"),
            )

            ));

      }

    }).catchError((onError) {});
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
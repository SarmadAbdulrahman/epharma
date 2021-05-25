import 'package:epharmalyical/controller/home_controller.dart';
import 'package:epharmalyical/controller/login_controller.dart';
import 'package:epharmalyical/view/Item_Screen.dart';
import 'package:epharmalyical/view/home_view.dart';
import 'package:epharmalyical/view/item_view.dart';
import 'package:epharmalyical/view/items_dashboard.dart';
import 'package:epharmalyical/view/login_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';



import 'staticUi/Darwer.dart';














class BalanceView extends StatelessWidget {

  //final HomeController _homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Balance',
        ),
      ),
     // drawer: MainDrawer(),
      body:Container(
        margin: EdgeInsets.all(15.0),
        child: Column(
          children: <Widget>[
            accountItems("Current Balance in USD", r" $ 4,946.00", "IN", "credit", oddColour: const Color(0xFFF7F7F9)),
            accountItems("Current Balance In IQD", r"  IQD 10,946,000", "IN", "credit", oddColour: const Color(0xFFF7F7F9)),

          ],
        ),
      ),


    );
  }











  Container accountItems(
      String item, String charge, String dateString, String type,
      {Color oddColour = Colors.white}) =>
      Container(
        decoration: BoxDecoration(color: oddColour),
        padding:
        EdgeInsets.only(top: 20.0, bottom: 20.0, left: 5.0, right: 5.0),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(item, style: TextStyle(fontSize: 16.0)),
                Text(charge, style: TextStyle(fontSize: 16.0))
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(dateString,
                    style: TextStyle(color: Colors.grey, fontSize: 14.0)),
                Text(type, style: TextStyle(color: Colors.grey, fontSize: 14.0))
              ],
            ),
          ],
        ),
      );


}

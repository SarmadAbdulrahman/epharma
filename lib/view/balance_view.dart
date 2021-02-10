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
  // final LoginController _loginController = Get.find();
// final List<String> items = ['Balbhadra', 'Maulik', 'Roshi'];
  // static const double height = 366.0;
  // String name = 'My Wishlist';
  //final HomeController _homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    //print(_loginController.emailTextController.text);

    /*   final Orientation orientation = MediaQuery.of(context).orientation;
    final ThemeData theme = Theme.of(context);
    final TextStyle titleStyle =
    theme.textTheme.headline.copyWith(color: Colors.black54);
    final TextStyle descriptionStyle = theme.textTheme.subhead;
    ShapeBorder shapeBorder;

    */

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
            accountItems("Current Balance", r"+ $ 4,946.00", "IN", "credit",
                oddColour: const Color(0xFFF7F7F9)),
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

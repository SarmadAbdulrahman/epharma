import 'package:epharmalyical/controller/home_controller.dart';
import 'package:epharmalyical/controller/login_controller.dart';
import 'package:epharmalyical/view/Item_Screen.dart';
import 'package:epharmalyical/view/balance_view.dart';
import 'package:epharmalyical/view/home_view.dart';
import 'package:epharmalyical/view/item_view.dart';
import 'package:epharmalyical/view/items_dashboard.dart';
import 'package:epharmalyical/view/login_view.dart';
import 'package:epharmalyical/view/marketing_view.dart';
import 'package:epharmalyical/view/order_view.dart';
import 'package:epharmalyical/view/pending_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';



import 'staticUi/Darwer.dart';

class Photo {
  Photo({
    this.assetName,
    this.assetPackage,
    this.title,
    this.caption,
  });

  final String assetName;
  final String assetPackage;
  final String title;
  final String caption;
}






Card makeDashboardItem(String title, IconData icon,int pageCode,context) {
  return Card(
      elevation: 1.0,
      margin: new EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(color: Color.fromRGBO(220, 220, 220, 1.0)),
        child: new InkWell(
          onTap: () {



            switch(pageCode)
            {




            //  case 1 :Get.offAll(BalanceView());break;
              case 2:  Navigator.push(context,MaterialPageRoute(builder: (context) => ItemsDashboard()));break;
              case 3:  Navigator.push(context,MaterialPageRoute(builder: (context) => OrderView()));break;
              case 4:  Navigator.push(context,MaterialPageRoute(builder: (context) => ItemView()));break;
              case 5:  Navigator.push(context,MaterialPageRoute(builder: (context) => MarketingView()));break;
              case 6:  Navigator.push(context,MaterialPageRoute(builder: (context) => PendingView()));break;
              case 1 : Navigator.push(context,MaterialPageRoute(builder: (context) => BalanceView()));break;
              //            Navigator.push(context,MaterialPageRoute(builder: (context) => dashborad_Item_Details(_itemController.items[index])));





            }





          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            verticalDirection: VerticalDirection.down,
            children: <Widget>[
              SizedBox(height: 50.0),
              Center(
                  child: Icon(
                    icon,
                    size: 40.0,
                    color: Colors.black,
                  )),
              SizedBox(height: 20.0),
              new Center(
                child: new Text(title,
                    style:
                    new TextStyle(fontSize: 18.0, color: Colors.black)),
              )
            ],
          ),
        ),
      ));
}








class DashboardView extends StatelessWidget {
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
          'Dashboard',
        ),
      ),
      drawer: MainDrawer(),
      body:Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 2.0),
        child: GridView.count(
          crossAxisCount: 2,
          padding: EdgeInsets.all(3.0),
          children: <Widget>[
            makeDashboardItem("Orders", Icons.book,3,context),
            makeDashboardItem("Balacne", Icons.account_balance,1,context),
            makeDashboardItem("Stock", Icons.shopping_basket,2,context),
            makeDashboardItem("Markting", Icons.handyman,5,context),
            makeDashboardItem("pending", Icons.alarm,6,context),
            makeDashboardItem("Itmes", Icons.card_travel,2,context)
          ],
        ),
      ),


    );
  }



}

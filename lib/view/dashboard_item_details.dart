

import 'package:epharmalyical/view/Cart_screen.dart';
import 'package:epharmalyical/view/checkout_screen.dart';
import 'package:epharmalyical/view/staticUi/Darwer.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';


import 'package:get/get.dart';

class dashborad_Item_Details extends StatelessWidget {

  // ItemController _itemController = Get.put(ItemController());
  var  _item;
  var toolbarname,desc,img,prc;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  List list = ['12', '11'];

  String itemname = 'Apple';
  int item = 0;
  String itemprice ;//= '\$15';

  dashborad_Item_Details(destination){
    itemname=toolbarname=destination.name;
    desc=destination.desc;
    img=destination.imagePath;
    itemprice=destination.price;
  }



  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final ThemeData theme = Theme.of(context);
    final TextStyle titleStyle =
    theme.textTheme.headline.copyWith(color: Colors.white);
    final TextStyle descriptionStyle = theme.textTheme.subhead;
    IconData _backIcon() {
      switch (Theme.of(context).platform) {
        case TargetPlatform.android:
        case TargetPlatform.fuchsia:
          return Icons.arrow_back;
        case TargetPlatform.iOS:
          return Icons.arrow_back_ios;
      }
      assert(false);
      return null;
    }

    IconData _add_icon() {
      switch (Theme.of(context).platform) {
        case TargetPlatform.android:
        case TargetPlatform.fuchsia:
          return Icons.add_circle;
        case TargetPlatform.iOS:
          return Icons.add_circle;
      }
      assert(false);
      return null;
    }

    IconData _sub_icon() {
      switch (Theme.of(context).platform) {
        case TargetPlatform.android:
        case TargetPlatform.fuchsia:
          return Icons.remove_circle;
        case TargetPlatform.iOS:
          return Icons.remove_circle;
      }
      assert(false);
      return null;
    }

    return Scaffold(
      //  drawer: MainDrawer(),
        key: _scaffoldKey,
         appBar: AppBar(
        title:Text("My items")
    ),
        body: Container(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
                child: Column(children: <Widget>[
                  Card(
                    elevation: 4.0,
                    child: Container(
                      color: Colors.white,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            // photo and title
                            SizedBox(
                              height: 250.0,
                              child: Stack(
                                alignment: Alignment.center,
                                children: <Widget>[
                                  Container(
                                    child: Carousel(
                                      images: [
                                        NetworkImage(
                                            img
                                          // package: destination.assetPackage,
                                        ),

                                        NetworkImage(
                                            img
                                          // package: destination.assetPackage,
                                        ),
                                        NetworkImage(
                                            img
                                          // package: destination.assetPackage,
                                        ),
                                        NetworkImage(
                                            img
                                          // package: destination.assetPackage,
                                        ),
                                        NetworkImage(
                                            img
                                          // package: destination.assetPackage,
                                        ),
                                        NetworkImage(
                                            img
                                          // package: destination.assetPackage,
                                        ),

                                      ],
                                      boxFit: BoxFit.scaleDown,
                                      showIndicator: false,
                                      autoplay: false,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ]),
                    ),
                  ),
                  Container(
                      padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
                      child: DefaultTextStyle(
                          style: descriptionStyle,
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              // three line description
                              Padding(
                                padding: const EdgeInsets.only(bottom: 8.0),
                                child: Text(
                                  itemname,
                                  style: descriptionStyle.copyWith(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black87),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 8.0),
                                child: Text(
                                  itemprice,
                                  style: descriptionStyle.copyWith(
                                      fontSize: 20.0, color: Colors.black54),
                                ),
                              ),
                            ],
                          ))),
                  Container(
                      margin: EdgeInsets.all(10.0),
                      child: Card(
                          child: Container(
                              padding:
                              const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 20.0),
                              child: DefaultTextStyle(
                                  style: descriptionStyle,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      // three line description


                                      Padding(
                                        padding: const EdgeInsets.only(bottom: 8.0,left: 120),
                                        child: Container(
                                          alignment: Alignment.center,
                                          child: OutlineButton(
                                              borderSide: BorderSide(
                                                  color: Colors.amber.shade500),
                                              child: const Text('Edit'),
                                              textColor: Colors.amber.shade500,
                                              onPressed: () {


                                              },
                                              shape: OutlineInputBorder(
                                                borderRadius:
                                                BorderRadius.circular(30.0),
                                              )),
                                        ),
                                      ),
                                    ],
                                  ))))),
                  Container(
                      padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
                      child: DefaultTextStyle(
                          style: descriptionStyle,
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              // three line description
                              Padding(
                                padding: const EdgeInsets.only(bottom: 8.0),
                                child: Text(
                                  'Details',
                                  style: descriptionStyle.copyWith(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black87),
                                ),
                              ),
                            ],
                          ))),
                  Container(
                      padding: const EdgeInsets.fromLTRB(20.0, 10.0, 10.0, 0.0),
                      child: Text(desc,
                          maxLines: 10,
                          style: TextStyle(fontSize: 13.0, color: Colors.black38))),
                ]))));
  }
}

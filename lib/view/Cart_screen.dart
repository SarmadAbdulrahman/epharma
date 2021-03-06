import 'package:epharmalyical/controller/home_controller.dart';
import 'package:epharmalyical/controller/item_controller.dart';
import 'package:epharmalyical/view/Item_Screen.dart';
import 'package:epharmalyical/view/checkout_screen.dart';
import 'package:epharmalyical/view/staticUi/Darwer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

enum DialogDemoAction {
  cancel,
  discard,
  disagree,
  agree,
}



class Itema {
  final String itemName;
  final String itemQun;
  final String itemPrice;

  Itema({this.itemName, this.itemQun, this.itemPrice});
}



class Cart_screen extends StatelessWidget {
// ItemController

  final ItemController _itemController = Get.put(ItemController());

  String toolbarname = 'My Cart';
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  String pincode;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

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

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    double dd = width * 0.77;
    double hh = height - 215.0;
    int item = 0;
    final ThemeData theme = Theme.of(context);
    final TextStyle dialogTextStyle =
        theme.textTheme.subhead.copyWith(color: theme.textTheme.caption.color);

    return Scaffold(
      drawer: MainDrawer(),
      key: _scaffoldKey,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(_backIcon()),
          alignment: Alignment.centerLeft,
          tooltip: 'Back',
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(toolbarname),
        backgroundColor:  const Color(0xff2B339B),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 150.0,
              width: 30.0,
              child: GestureDetector(
                onTap: () {
                  /*Navigator.of(context).push(
                   MaterialPageRoute(
                      builder:(BuildContext context) =>
                       CartItemsScreen()
                  )
              );*/
                },
              ),
            ),
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          Container(
              margin: EdgeInsets.only(left: 0.0, right: 0.0, bottom: 1.0),
              child: Card(
                  child: Container(
                      padding: const EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 5.0),
                      child: GestureDetector(
                          child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          // three line description
                          Row(
                            children: <Widget>[
                              Text(
                                'Pincode : ',
                                style: TextStyle(
                                  fontSize: 17.0,
                                  fontStyle: FontStyle.normal,
                                  color: Colors.black54,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 2.0),
                              ),
                              GestureDetector(
                                child: Text(
                                  '383310',
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                      decoration: TextDecoration.underline,
                                      color: Colors.black),
                                ),
                                onTap: () {
                                  showDemoDialog<DialogDemoAction>(
                                      context: context,
                                      child: AlertDialog(
                                          title: const Text(
                                              'Location/Area Pincode'),
                                          content: SizedBox(
                                            height: 24.0,
                                            child: TextFormField(
                                                keyboardType:
                                                    TextInputType.emailAddress,
                                                // Use email input type for emails.
                                                decoration: InputDecoration(
                                                    hintText: '******',
                                                    labelText: 'Pincode'),
                                                //  validator: this._validateEmail,
                                                onSaved: (String value) {
                                                  this.pincode = value;
                                                }),
                                          ),
                                          actions: <Widget>[
                                            FlatButton(
                                                child: const Text('CANCEL'),
                                                onPressed: () {
                                                  Navigator.pop(
                                                      context,
                                                      DialogDemoAction
                                                          .disagree);
                                                }),
                                            FlatButton(
                                                child: const Text('SAVE'),
                                                onPressed: () {
                                                  Navigator.pop(context,
                                                      DialogDemoAction.agree);
                                                })
                                          ]));
                                },
                              )
                            ],
                          ),
                        ],
                      ))))),
          Container(
              margin: EdgeInsets.only(
                  left: 12.0, top: 5.0, right: 12.0, bottom: 10.0),
              height: hh,
              child: Obx(() => RefreshIndicator(
                  child: ListView.builder(
                      itemCount: _itemController.items.length,
                      itemBuilder: (BuildContext cont, int ind) {
                        return SafeArea(
                            child: Container(
                          alignment: Alignment.topLeft,
                          child: Column(
                            children: <Widget>[
                              Obx(
                                () => Container(
                                    alignment: Alignment.topLeft,
                                    child: Row(
                                      children: <Widget>[
                                        Container(
                                          height: 100.0,
                                          width: dd,
                                          child: Card(
                                            child: Row(
                                              children: <Widget>[
                                                SizedBox(
                                                    height: 100.0,
                                                    width: 100.0,
                                                    child: Image.network(
                                                      _itemController
                                                          .items[ind].imagePath,
                                                      fit: BoxFit.fill,
                                                    )),
                                                SizedBox(
                                                    height: 100.0,
                                                    child: Container(
                                                      alignment:
                                                          Alignment.topLeft,
                                                      child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: <Widget>[
                                                          _verticalD(),
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: <Widget>[
                                                              Text(
                                                                _itemController
                                                                    .items[ind]
                                                                    .name,
                                                                style: TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontSize:
                                                                        18.0,
                                                                    color: Colors
                                                                        .black),
                                                              ),
                                                            ],
                                                          ),
                                                          _verticalD(),
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: <Widget>[
                                                              Text(
                                                                _itemController
                                                                    .items[ind]
                                                                    .price,
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        15.0,
                                                                    color: Colors
                                                                        .black54),
                                                              ),
                                                            ],
                                                          ),
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            children: <Widget>[
                                                              IconButton(
                                                                icon: Icon(_add_icon(),color: Colors.amber.shade500),
                                                                onPressed: () {
                                                                  //_itemController.items[ind].counter = _itemController.items[ind].counter +1;
                                                                  _itemController.AddMethod(ind);
                                                               //   print(_itemController.items[ind].counter);


                                                                },
                                                              ),
                                                              Container(
                                                                margin: EdgeInsets
                                                                    .only(
                                                                        left:
                                                                            2.0),
                                                              ),




                                                              GetBuilder<ItemController>(
                                                                init: ItemController(),
                                                                  builder:(_itemController)=>Text(_itemController.items[ind].counter.toString(),),
                                                              ),




                                                              Container(
                                                                margin: EdgeInsets
                                                                    .only(
                                                                        right:
                                                                            2.0),
                                                              ),
                                                              IconButton(
                                                                icon: Icon(
                                                                    _sub_icon(),
                                                                    color: Colors
                                                                        .amber
                                                                        .shade500),
                                                                onPressed: () {
                                                                  if (_itemController.items[ind].counter ==0) {

                                                                   // print(_itemController.items[ind].counter);
                                                                   // _itemController.AddMethod(ind);


                                                                  }
                                                                  else {


                                                                    _itemController.minMethod(ind);


                                                                  }
                                                                },
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ))
                                              ],
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                            height: 110.0,
                                            width: 50.0,
                                            child: Container(
                                              alignment: Alignment.center,


                                              child:GetBuilder<ItemController>(
                                                init:ItemController(),
                                                builder: (_itemController)=>Text(_itemController.items[ind].Totalprice,),

                                              )


                                             // Text(_itemController.items[ind].price,),
                                            )),
                                      ],
                                    )),
                              )
                            ],
                          ),
                        ));
                      }),
                  onRefresh: _itemController.getData))),



          Container(
              alignment: Alignment.bottomLeft,
              height: 50.0,
              child: Card(
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(icon: Icon(Icons.info), onPressed: null),
                    Text(
                      'Total :',
                      style: TextStyle(
                          fontSize: 17.0,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '\IQD 00',
                      style: TextStyle(fontSize: 17.0, color: Colors.black54),
                    ),

    GetBuilder<ItemController>(
    init:ItemController(),
    builder:(_itemController)=>

                      Text("\$"+_itemController.InvoicePice.toString(),
                      style: TextStyle(fontSize: 17.0, color: Colors.black54),
                    ),
    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        alignment: Alignment.center,
                        child: OutlineButton(
                            borderSide:
                                BorderSide(color: Colors.amber.shade500),
                            child: const Text('CONFIRM ORDER'),
                            textColor: Colors.amber.shade500,
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Checkout(_itemController.InvoicePice.toString(),_itemController.items)));
                            },
                            shape: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            )),
                      ),
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }

  verticalDivider() => Container(
        padding: EdgeInsets.all(2.0),
      );

  _verticalD() => Container(
        margin: EdgeInsets.only(left: 3.0, right: 0.0, top: 02.0, bottom: 0.0),
      );

  void showDemoDialog<T>({BuildContext context, Widget child}) {
    showDialog<T>(
      context: context,
      builder: (BuildContext context) => child,
    ).then<void>((T value) {
      // The value passed to Navigator.pop() or null.
      if (value != null) {
        _scaffoldKey.currentState
            .showSnackBar(SnackBar(content: Text('You selected: $value')));
      }
    });
  }
}

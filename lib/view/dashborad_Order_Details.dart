
import 'package:epharmalyical/controller/order_controller.dart';
import 'package:epharmalyical/controller/reigster_controller.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class dashborad_Order_Details extends StatelessWidget {

  var toolbarname, desc, img, prc;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final _formKey = GlobalKey<FormState>();
  final controller = Get.put(RegisterController());

  final Ordercontroller = Get.put(OrderController());
  List list = ['12', '11'];

  String itemname = 'Apple';
  int item = 0,id;
  String itemprice; //= '\$15';

  dashborad_Order_Details(destination) {
    itemname = toolbarname = destination.itemName;
   desc = destination.pharmacyName;
  //  img = destination.imagePath;
    itemprice = destination.itemCount;
    id=destination.id;
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final ThemeData theme = Theme.of(context);
    final TextStyle titleStyle =
    theme.textTheme.headline.copyWith(color: Colors.white);
    final TextStyle descriptionStyle = theme.textTheme.subhead;
    IconData _backIcon() {
      switch (Theme
          .of(context)
          .platform) {
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
      switch (Theme
          .of(context)
          .platform) {
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
      switch (Theme
          .of(context)
          .platform) {
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
        key: _scaffoldKey,
        appBar: AppBar(
            title: Text("Order Detials")
        ),
        body: Container(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
                child: Column(children: <Widget>[

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
                                  'Requster Name',
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
                          style: TextStyle(
                              fontSize: 13.0, color: Colors.black38))),




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
                                        padding: const EdgeInsets.only(
                                            bottom: 8.0, left: 120),
                                        child: Container(
                                          alignment: Alignment.center,
                                          child: OutlineButton(
                                              borderSide: BorderSide(
                                                  color: Colors.amber.shade500),
                                              child: const Text('Actions'),
                                              textColor: Colors.amber.shade500,
                                              onPressed: () {

                                                Edit(context,_formKey,id);
                                              },
                                              shape: OutlineInputBorder(
                                                borderRadius:
                                                BorderRadius.circular(30.0),
                                              )),
                                        ),
                                      ),
                                    ],
                                  ))))),

                ]




                ))));
  }




  Widget showImage() {

    return  GetBuilder<RegisterController>(
        builder: (_) => controller.image!=null?Image.file(controller.image):Text('No image selected')
    );

  }




  Edit(BuildContext context,_formKey,currentItemId) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {

          return AlertDialog(
              content: Stack(
                  clipBehavior: Clip.antiAlias,
                  children: <Widget>[

                    Positioned(right: -40.0,top: -40.0,
                      child:
                      InkResponse(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: CircleAvatar(
                          child: Icon(Icons.close),
                          backgroundColor: Colors.red,
                        ),


                      ),
                    ),

                    Form(
                        key: _formKey,
                        child:  SingleChildScrollView (child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[




                            SizedBox(height: 10),


                            Padding(

                              padding: EdgeInsets.all(8.0),
                              child:    TextFormField(
                                controller: controller.UserNameTextController,
                                keyboardType: TextInputType.name,
                                decoration: InputDecoration(
                                  fillColor: Colors.grey[200],
                                  filled: true,
                                  hintText: 'Rep Name',
                                  hintStyle: GoogleFonts.exo2(
                                    fontSize: 16,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.normal,
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 0,
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 0,
                                    ),
                                  ),
                                ),
                                style: GoogleFonts.exo2(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.normal,
                                ),
                                validator: (value) =>
                                value.trim().isEmpty ? 'Rep name required' : null,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child:  TextFormField(
                                controller: controller.emailTextController,
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  fillColor: Colors.grey[200],
                                  filled: true,
                                  hintText: 'Rep number',
                                  hintStyle: GoogleFonts.exo2(
                                    fontSize: 16,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.normal,
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 0,
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 0,
                                    ),
                                  ),
                                ),
                                style: GoogleFonts.exo2(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.normal,
                                ),
                                validator: (value) =>
                                value.trim().isEmpty ? 'number required' : null,
                              ),
                            ),



                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child:  TextButton(
                                  onPressed: () {
                                    DatePicker.showDateTimePicker(context,
                                        showTitleActions: true,
                                        minTime: DateTime(2021, 1, 1),
                                        maxTime: DateTime(2040, 12, 31),onConfirm: (date) {
                                        //  print('confirm $date');
                                          Ordercontroller.DataTimes=date;

                                        }, currentTime: DateTime.now(), locale: LocaleType.en);
                                  },
                                  child: Text(
                                    'Choose date and time',
                                    style: TextStyle(color: const Color(0xff3F1697)),
                                  )),
                            ),









                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child:      MaterialButton(
                                  color:  const Color(0xff3F1697),
                                  splashColor: Colors.white,
                                  height: 45,
                                  minWidth: Get.width / 2,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Text(
                                    'Subimted',
                                    style: GoogleFonts.exo2(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  onPressed: () {
                                    if (_formKey.currentState.validate()) {
                                      // print(currentItemId);
                                    //  controller.apiupdateItem(currentItemId);
                                      Ordercontroller.apiApproveOrder(currentItemId.toString(),Ordercontroller.DataTimes);
                                      Navigator.of(context).pop();
                                    }
                                  }),
                            )
                          ],
                        )))

                  ]));


        }
    );
  }

}
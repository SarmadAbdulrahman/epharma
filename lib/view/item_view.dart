import 'dart:convert';
import 'dart:io';

import 'package:epharmalyical/controller/login_controller.dart';
import 'package:epharmalyical/controller/reigster_controller.dart';
import 'package:epharmalyical/view/staticUi/Darwer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

class ItemView extends GetView<RegisterController> {
 // final RegisterController _registerControllerController = Get.put(RegisterController());
  final controller = Get.put(RegisterController());
  final _formKey = GlobalKey<FormState>();

   //  Get.find<RegisterController>().






  Widget showImage() {

  return  GetBuilder<RegisterController>(
        builder: (_) => controller.image!=null?Image.file(controller.image):Text('No image selected')
        );

}







  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Add Item',
        ),
      ),
      drawer: MainDrawer(),
      body: Container(
        padding: EdgeInsets.fromLTRB(16, 100, 16, 0),
        child:   Form(
          key: _formKey,
          child:   SingleChildScrollView (child:Column(
            children: <Widget>[

               showImage(),
              SizedBox(height: 10),
              OutlinedButton(
                onPressed: controller.getImage,
                child: Text('Choose From Gallery'),
              ),

              OutlinedButton(
                onPressed: controller.getImageFromCamera,
                child: Text('Choose From Camera'),
              ),


              SizedBox(height: 10),
              SizedBox(height: 16),
              TextFormField(
                controller: controller.UserNameTextController,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  fillColor: Colors.grey[200],
                  filled: true,
                  hintText: 'Item name',
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
                value.trim().isEmpty ? 'item name required' : null,
              ),
              SizedBox(height: 16),
              TextFormField(
                controller: controller.emailTextController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  fillColor: Colors.grey[200],
                  filled: true,
                  hintText: 'Price usd',
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
                value.trim().isEmpty ? 'Price required' : null,
              ),
              SizedBox(height: 16),
              TextFormField(
                controller: controller.PriceTextController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  fillColor: Colors.grey[200],
                  filled: true,
                  hintText: 'Price IQD',
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
                value.trim().isEmpty ? 'Price required' : null,
              ),

              SizedBox(height: 16),


              SizedBox(height: 16),
              MaterialButton(
                  color: const Color(0xff3F1697),
                  splashColor: Colors.white,
                  height: 45,
                  minWidth: Get.width / 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    'Add',
                    style: GoogleFonts.exo2(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: () {
                    if (_formKey.currentState.validate()) {
                      controller.apiUploadItem();
                    }
                  }),

            ],

        )),
      ),
      ));
  }
}

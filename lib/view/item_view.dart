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
  final RegisterController _registerControllerController = Get.put(RegisterController());
  final _formKey = GlobalKey<FormState>();

   //  Get.find<RegisterController>().






  Widget showImage() {

     // future: _registerControllerController.image,

          return Flexible(
            child: _registerControllerController.ImageSataus!=null?Text('uploded'):Text('no image selected')
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
          child:   Column(
            children: <Widget>[

               showImage(),
              SizedBox(height: 10),
              OutlineButton(
                onPressed: _registerControllerController.getImage,
                child: Text('Choose Image'),
              ),
              SizedBox(height: 16),
              TextFormField(
                controller: _registerControllerController.UserNameTextController,
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
                controller: _registerControllerController.emailTextController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  fillColor: Colors.grey[200],
                  filled: true,
                  hintText: 'Price',
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
                      _registerControllerController.apiUploadItem();
                    }
                  }),

            ],

        )),
      ),
      );
  }
}

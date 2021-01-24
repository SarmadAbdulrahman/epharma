import 'dart:convert';
import 'dart:io';

import 'package:epharmalyical/controller/login_controller.dart';
import 'package:epharmalyical/controller/reigster_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

class ItemView extends GetView<RegisterController> {
  final RegisterController _registerControllerController = Get.put(RegisterController());
  final _formKey = GlobalKey<FormState>();


  String base64Image;
  File tmpFile;
  String errMessage = 'Error Uploading Image';







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
                  hintText: 'User Name',
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
                value.trim().isEmpty ? 'user name required' : null,
              ),
              SizedBox(height: 16),
              TextFormField(
                controller: _registerControllerController.emailTextController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  fillColor: Colors.grey[200],
                  filled: true,
                  hintText: 'Mobile',
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
                value.trim().isEmpty ? 'Mobile required' : null,
              ),

              SizedBox(height: 16),
              TextFormField(
                controller: _registerControllerController.passwordTextController,
                keyboardType: TextInputType.text,
                obscureText: true,
                decoration: InputDecoration(
                  fillColor: Colors.grey[200],
                  filled: true,
                  hintText: 'Password',
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
                validator: (value) =>
                value.trim().isEmpty ? 'Password required' : null,
                style: GoogleFonts.exo2(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                ),
              ),
              SizedBox(height: 16),
              MaterialButton(
                  color: Colors.deepOrangeAccent,
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
                      _registerControllerController.apiRegister();
                    }
                  }),

            ],

        )),
      ),
      );
  }
}

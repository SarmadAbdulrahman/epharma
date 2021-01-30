
import 'package:epharmalyical/view/home_view.dart';
import 'package:epharmalyical/view/item_view.dart';
import 'package:epharmalyical/view/login_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';





selectDestination(code)
{
   switch(code)
   {

     case 1 :Get.offAll(LoginView());break;
     case 2: Get.offAll(HomeView());break;
     case 4: Get.offAll(ItemView());break;



   }

}

Widget  MainDrawer () {


  int _selectedDestination=0;
  return Drawer(

    child: ListView(
// Important: Remove any padding from the ListView.
      padding: EdgeInsets.zero,
      children: <Widget>[

    DrawerHeader(
    margin: EdgeInsets.zero,
        padding: EdgeInsets.zero,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image:  AssetImage('images/background-2726037_640.png'))),
        child: Stack(children: <Widget>[
          Positioned(
              bottom: 12.0,
              left: 16.0,
              child: Text("User name",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500))),
        ])),

        ListTile(
          leading: Icon(Icons.favorite),
          title: Text('add Item'),
          selected: _selectedDestination == 4,
          onTap: () => selectDestination(4),
        ),
        ListTile(
          leading: Icon(Icons.home),
          title: Text('Home'),
          selected: _selectedDestination == 2,
          onTap: () => selectDestination(2),
        ),
        ListTile(
          leading: Icon(Icons.label),
          title: Text('Item 3'),

          selected: _selectedDestination == 2,
          onTap: () => selectDestination(2),
        ),
        Divider(
          height: 1,
          thickness: 1,
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            'Settings',
          ),
        ),
        ListTile(
          leading: Icon(Icons.logout),
          title: Text('Logout'),
          selected: _selectedDestination == 3,
          onTap: () async{


            var _localStorage =  await SharedPreferences.getInstance();
            _localStorage.remove('token');

            selectDestination(1);

           }
        ),
      ],
    ),
  );
}
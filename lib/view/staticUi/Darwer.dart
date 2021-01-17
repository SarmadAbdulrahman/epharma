
import 'package:epharmalyical/view/login_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';





selectDestination(code)
{
   switch(code)
   {

     case 1 : Get.offAll(LoginView());break;
     case 2: Get.offAll(LoginView());break;



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
          child: Text('Drawer Header'),
          decoration: BoxDecoration(
            color: Colors.deepOrange,
          ),
        ),

        ListTile(
          leading: Icon(Icons.favorite),
          title: Text('Item 1'),
          selected: _selectedDestination == 0,
          onTap: () => selectDestination(0),
        ),
        ListTile(
          leading: Icon(Icons.delete),
          title: Text('Item 2'),
          selected: _selectedDestination == 1,
          onTap: () => selectDestination(1),
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
            'Label',
          ),
        ),
        ListTile(
          leading: Icon(Icons.bookmark),
          title: Text('Item A'),
          selected: _selectedDestination == 3,
          onTap: () => selectDestination(1),
        ),
      ],
    ),
  );
}
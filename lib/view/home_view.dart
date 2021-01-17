import 'package:epharmalyical/controller/home_controller.dart';
import 'package:epharmalyical/controller/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'staticUi/Darwer.dart';

class HomeView extends StatelessWidget {
 // final LoginController _loginController = Get.find();
  final HomeController _homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    //print(_loginController.emailTextController.text);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Dashboard',
        ),
      ),

      drawer: MainDrawer(),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: <Widget>[
            Text(
              'Welcome ',
              style: GoogleFonts.exo2(
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.normal,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Expanded(
              child: Obx(
                    () => GridView.builder(
                    //  physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                      itemCount: _homeController.userListData.length,
                  itemBuilder: (context, index) =>
                      GestureDetector(
                        onTap: () => print("ssss"),
                       child:  Card(
                        clipBehavior: Clip.antiAlias,
                        child: Column(
                          children: [
                            ListTile(
                              leading: Icon(Icons.arrow_drop_down_circle),
                              title:  Text(_homeController.userListData[index].firstName),
                              subtitle: Text(
                                _homeController.userListData[index].email,
                                style: TextStyle(color: Colors.black.withOpacity(0.6)),
                              ),
                            ),
                        Image.network(
                        _homeController.userListData[index].avatar,
                        width: 100,
                        height: 100,
                        fit: BoxFit.contain,)

                          ],
                        ),
                      ),
                      ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
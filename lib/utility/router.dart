import 'package:epharmalyical/view/home_view.dart';
import 'package:epharmalyical/view/login_view.dart';
import 'package:get/get.dart';
//import 'package:getx_app/view/login_view.dart';
//import 'package:getx_app/view/home_view.dart';

class Routar {
  static final route = [
    GetPage(
      name: '/loginView',
      page: () => LoginView(),
    ),
    GetPage(
      name: '/homeView',
      page: () => HomeView(),
    ),
  ];
}
import 'package:epharmalyical/view/dashboard_veiw.dart';
import 'package:epharmalyical/view/home_view.dart';
import 'package:epharmalyical/view/items_dashboard.dart';
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

    GetPage(
      name: '/DashboardView',
      page: () => DashboardView(),
    ),


    GetPage(
      name: '/ItemsDashboardView',
      page: () => ItemsDashboard(),
    ),




  ];
}
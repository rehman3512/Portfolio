import 'package:get/get.dart';
import 'package:portfolio/View/HomeView/lastpage/lastpage.dart';
import 'package:portfolio/View/HomeView/page1/page1.dart';
import 'package:portfolio/View/HomeView/page2/page2.dart';
import 'package:portfolio/mainscreenview.dart';

class AppRoutes {
  static final String Page1Screen = "/";
  static final String Page2Screen = "/Page2";
  static final String LastPageScreen = "/LastPage";
  static final String MainScreen = "/MainScreen";

  static final routes = [
    GetPage(name: Page1Screen, page: ()=>Page1()),
    GetPage(name: Page2Screen, page: ()=>Page2()),
    GetPage(name: LastPageScreen, page: ()=>LastPage()),
    GetPage(name: MainScreen, page: ()=>MainScreenView()),
  ];
}
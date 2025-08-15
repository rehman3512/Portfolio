// import 'package:get/get.dart';
// import 'package:portfolio/View/HomeView/lastpage/lastpage.dart';
// import 'package:portfolio/View/HomeView/page1/page1.dart';
// import 'package:portfolio/View/HomeView/page2/page2.dart';
// import 'package:portfolio/mainscreenview.dart';
//
// class AppRoutes {
//   static final String Page1Screen = "/";
//   static final String Page2Screen = "/Page2";
//   static final String LastPageScreen = "/LastPage";
//   static final String MainScreen = "/MainScreen";
//
//   static final routes = [
//     GetPage(name: Page1Screen, page: ()=>Page1()),
//     GetPage(name: Page2Screen, page: ()=>Page2()),
//     GetPage(name: LastPageScreen, page: ()=>LastPage()),
//     GetPage(name: MainScreen, page: ()=>MainScreenView()),
//   ];
// }


import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio/View/HomeView/lastpage/lastpage.dart';
import 'package:portfolio/View/HomeView/page1/page1.dart';
import 'package:portfolio/View/HomeView/page2/page2.dart';
import 'package:portfolio/mainscreenview.dart';

class GoRoutes {
  static final String Page1Screen = "/";
  static final String Page2Screen = "/Page2View";
  static final String LastPageScreen = "/LastPageView";
  static final String MainScreen = "/MainScreenView";
  static final GoRouter router = GoRouter(
    initialLocation: Page1Screen,
      routes : [
        GoRoute(path: Page1Screen,builder: (BuildContext context,GoRouterState state)=>Page1()),
        GoRoute(path: Page2Screen,builder: (BuildContext context,GoRouterState state)=>Page2()),
        GoRoute(path: LastPageScreen,builder: (BuildContext context,GoRouterState state)=>LastPage()),
        GoRoute(path: MainScreen,builder: (BuildContext context,GoRouterState state)=>MainScreenView())
      ]
  );
}
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio/View/HomeView/homeview.dart';
import 'package:portfolio/View/HomeView/lastpage/lastpage.dart';
import 'package:portfolio/View/HomeView/page1/page1.dart';
import 'package:portfolio/View/HomeView/page2/page2.dart';

class GoRoutes {
  static final String page1screen = "/";
  static final String page2screen = "/Page2";
  static final String lastpagescreen = "/LastPage";
  static final String homeScreen = "/HomeScreen";

  static final GoRouter router = GoRouter(
    initialLocation: page1screen,
      routes: [
        GoRoute(path: page1screen,builder: (context,state)=> Page1()),
        GoRoute(path: page2screen,builder: (context,state)=> Page2()),
        GoRoute(path: lastpagescreen,builder: (context,state)=> LastPage()),
        GoRoute(path: homeScreen,builder: (context,state)=> HomeScreen())
  ]);

}
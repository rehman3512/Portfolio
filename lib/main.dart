import 'package:flutter/material.dart';
import 'package:portfolio/Controller/Widgets/AppColor/appColor.dart';
import 'package:portfolio/Controller/Widgets/textWidget/textWidget.dart';
import 'package:portfolio/View/HomeView/lastpage/lastpage.dart';
import 'package:portfolio/View/HomeView/page1/page1.dart';
import 'package:portfolio/View/HomeView/page2/page2.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LastPage()
    );
  }
}

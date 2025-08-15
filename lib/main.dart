import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/routes/routes.dart';


void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      // home:
      initialRoute: AppRoutes.Page1Screen,
      getPages: AppRoutes.routes,

    );
  }
}
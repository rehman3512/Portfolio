import 'package:flutter/material.dart';
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
      // MaterialApp.router(
    //   debugShowCheckedModeBanner: false,
    //    routerConfig: GoRoutes.router,

       // home:
      initialRoute: AppRoutes.LastPageScreen,
      getPages: AppRoutes.routes,

    );
  }
}
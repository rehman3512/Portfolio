import 'package:flutter/material.dart';
import 'package:portfolio/routes/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Rehman Khan',
      debugShowCheckedModeBanner: false,
      routerConfig: GoRoutes.router,
    );
  }
}

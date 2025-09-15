import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/Constants/AppColor/appColor.dart';
import 'package:portfolio/Controller/HomeController/homecontroller.dart';
import 'package:portfolio/View/HomeView/PortfolioPage/portfoliopage.dart';
import 'package:portfolio/View/HomeView/ResumePage/resumepage.dart';
import 'package:portfolio/View/HomeView/lastpage/lastpage.dart';
import 'package:portfolio/View/HomeView/page1/page1.dart';
import 'package:portfolio/View/HomeView/page2/page2.dart';
import 'package:portfolio/Widgets/navbutton/navbutton.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final HomeController controller = Get.put(HomeController());

  final List<Widget> pages = [
    Page1(),
    Page2(),
    PortfolioPage(),
    ResumePage(),
    LastPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        toolbarHeight: 60,
        backgroundColor: AppColor.greyColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            NavButton(
                name: "HOME",
                index: 0,
                selectedIndex: controller.selectedIndex,
                onTap: () => controller.changepage(0)),
            NavButton(
                name: "SERVICES",
                index: 1,
                selectedIndex: controller.selectedIndex,
                onTap: () => controller.changepage(1)),
            NavButton(
                name: "PORTFOLIO",
                index: 2,
                selectedIndex: controller.selectedIndex,
                onTap: () => controller.changepage(2)),
            NavButton(
                name: "RESUME",
                index: 3,
                selectedIndex: controller.selectedIndex,
                onTap: () => controller.selectedIndex(3)),
            NavButton(
                name: "CONTACT",
                index: 4,
                selectedIndex: controller.selectedIndex,
                onTap: () => controller.changepage(4))
          ],
        ),
      ),
      body: Obx(() => pages[controller.selectedIndex.value]),
    );
  }
}

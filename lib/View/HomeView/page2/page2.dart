import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/Controller/Widgets/AppColor/appColor.dart';
import 'package:portfolio/Controller/Widgets/containerWidget/containerWidget.dart';
import 'package:portfolio/Controller/Widgets/textWidget/textWidget.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(height: double.infinity,width: double.infinity,
      color: AppColor.greyColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 90,vertical: 30),
        child: Stack(children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            TextWidget(text: "MY SERVICES", color: AppColor.redColor,
                fontsize: 12, fontWeight: FontWeight.w600),
            TextWidget(text: "WHAT CAN I DO", color: AppColor.whiteColor,
                fontsize: 28, fontWeight: FontWeight.w600),
              SizedBox(height: 40,),
              Row(children: [
                ContainerWidget(child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                     Icon(Icons.tv,color: AppColor.redColor,
                     size: 30,),
                      SizedBox(height: 10,),
                      TextWidget(
                          text: "Website design",
                          color: AppColor.whiteColor, fontsize: 16,
                          fontWeight: FontWeight.w400),
                      SizedBox(height: 10,),
                      TextWidget(
                          text: "Portfolio responsive web creating \n"
                              "for myself.",
                          color: AppColor.whiteColor, fontsize: 12,
                          fontWeight: FontWeight.w400),
                    ],),
                )
                ),
                SizedBox(width: 20,),
                ContainerWidget(child: Text("")),
                SizedBox(width: 20,),
                ContainerWidget(child: Text(""))
              ],),
              SizedBox(height: 20,),
              Row(children: [
                ContainerWidget(child: Text("")),
                SizedBox(width: 20,),
                ContainerWidget(child: Text("")),
                SizedBox(width: 20,),
                ContainerWidget(child: Text(""))
              ],)
          ],)
        ],),
      ),
      ),
    );
  }
}

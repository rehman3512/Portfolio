import 'package:flutter/material.dart';
import 'package:portfolio/Constants/AppColor/appColor.dart';
import 'package:portfolio/Widgets/ResponseWidget/ResponseWidget.dart';
import 'package:portfolio/Widgets/textWidget/textWidget.dart';

class PortfolioPage extends StatelessWidget {
  const PortfolioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponseWidget(mobile: Container(
        height: MediaQuery.of(context).size.height * 0.95,
        width: MediaQuery.of(context).size.width * 1,
        color: AppColor.redColor,
      ), tablet: Container(
          height:MediaQuery.of(context).size.height * 0.95,
          width: MediaQuery.of(context).size.width * 1,
          color: AppColor.redColor, ),
          desktop: Container(
            height: MediaQuery.of(context).size.height*0.95,
            width: MediaQuery.of(context).size.width*1,
            color: AppColor.greyColor,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 30),
              child: Column( crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextWidget(text: "MY PORTFOLIO", color: AppColor.redColor,
                      fontsize: 12, fontWeight: FontWeight.w400),
                  TextWidget(text: "Recent Works", color: AppColor.whiteColor,
                      fontsize: 48, fontWeight: FontWeight.w400)
                ],),
            ),
          )),
    );
  }
}

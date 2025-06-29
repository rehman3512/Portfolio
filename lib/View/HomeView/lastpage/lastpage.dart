import 'package:flutter/material.dart';
import 'package:portfolio/Controller/Widgets/AppColor/appColor.dart';
import 'package:portfolio/Controller/Widgets/smallContainerWidget/smallContainerWidget.dart';
import 'package:portfolio/Controller/Widgets/textFormContainer/textFormContainer.dart';
import 'package:portfolio/Controller/Widgets/textWidget/textWidget.dart';

class LastPage extends StatefulWidget {
  const LastPage({super.key});

  @override
  State<LastPage> createState() => _LastPageState();
}

class _LastPageState extends State<LastPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(height: double.infinity,width: double.infinity,
      color: AppColor.lightGreyColor,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextWidget(text: "Contact", color: AppColor.redColor,
                      fontsize: 16, fontWeight: FontWeight.w600),
                  TextWidget(text: "Contact with me", color: AppColor.whiteColor,
                      fontsize: 28, fontWeight: FontWeight.w600),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Column(
                      children: [
                      SmallContainerWidget(child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.map_outlined,color: AppColor.redColor,
                            size: 25,),
                          SizedBox(height: 10,),
                          TextWidget(text: "REHMAN DEVELOPER", color: AppColor.whiteColor,
                              fontsize: 8, fontWeight: FontWeight.w600)
                        ],)
                      ),
                      SizedBox(height: 10,),
                      SmallContainerWidget(child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.phone_outlined,color: AppColor.redColor,
                          size: 25,),
                          SizedBox(height: 10,),
                          TextWidget(text: "+92-3499-856-995", color: AppColor.whiteColor,
                              fontsize: 8, fontWeight: FontWeight.w600)
                      ],)),
                      SizedBox(height: 10,),
                      SmallContainerWidget(child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.email_outlined,color: AppColor.redColor,
                          size: 25,),
                          SizedBox(height: 10,),
                          TextWidget(text: "rehmankh2256@gmail.com", color: AppColor.whiteColor,
                              fontsize: 8, fontWeight: FontWeight.w600)
                        ],)
                      ),
                      SizedBox(height: 10,),
                      SmallContainerWidget(child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.check_outlined,color: AppColor.redColor,
                            size: 25,),
                          SizedBox(height: 10,),
                          TextWidget(text: "Freelance Available", color: AppColor.whiteColor,
                              fontsize: 8, fontWeight: FontWeight.w600)
                        ],)
                      ),
                    ],),
                    SizedBox(width: 20,),
                    Container(height: 430,width: 600,
                    decoration: BoxDecoration(
                      color: AppColor.greyColor,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: AppColor.greyColor)
                    ),
                    )
                  ],)

                ],),
            )
          ],),
      ),
      ),
    );
  }
}

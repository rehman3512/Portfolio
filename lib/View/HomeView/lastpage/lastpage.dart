import 'package:flutter/material.dart';
import 'package:portfolio/Controller/Widgets/AppColor/appColor.dart';
import 'package:portfolio/Controller/Widgets/ResponseWidget/ResponseWidget.dart';
import 'package:portfolio/Controller/Widgets/smallContainerWidget/smallContainerWidget.dart';
import 'package:portfolio/Controller/Widgets/textWidget/textWidget.dart';
import 'package:portfolio/mainscreenview.dart';

class LastPage extends StatefulWidget {
  const LastPage({super.key});

  @override
  State<LastPage> createState() => _LastPageState();
}

class _LastPageState extends State<LastPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponseWidget(
          mobile:  Container(
            height: MediaQuery.of(context).size.height*0.95,
            width: MediaQuery.of(context).size.width*1,
            color: AppColor.redColor,
          ),
          tablet:  Container(
            height: MediaQuery.of(context).size.height*0.95,
            width: MediaQuery.of(context).size.width*1,
            color: AppColor.blackColor,
          ),
          desktop: Container(
            height: MediaQuery.of(context).size.height*0.95,
            width: MediaQuery.of(context).size.width*1,
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
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(color: AppColor.greyColor)
                              ),child: Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 30),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              height: MediaQuery.of(context).size.height*0.08,
                                              width: MediaQuery.of(context).size.width*0.2,
                                              decoration: BoxDecoration(
                                                  color: AppColor.lightGreyColor,
                                                  border: Border.all(color: AppColor.greyColor),
                                                  borderRadius: BorderRadius.circular(8)
                                              ),child: Padding(
                                                padding: const EdgeInsets.symmetric(horizontal: 10),
                                                child: TextFormField(
                                                  style: TextStyle(color: AppColor.whiteColor,fontSize: 12,
                                                      fontWeight: FontWeight.w600),
                                                  decoration: InputDecoration(
                                                    border: InputBorder.none,
                                                    hintText: "Enter Your Name",
                                                    hintStyle: TextStyle(color: AppColor.whiteColor,fontSize: 12,
                                                        fontWeight: FontWeight.w600),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: 20,),
                                            Container(
                                              height: MediaQuery.of(context).size.height*0.08,
                                              width: MediaQuery.of(context).size.width*0.2,
                                              decoration: BoxDecoration(
                                                  color: AppColor.lightGreyColor,
                                                  border: Border.all(color: AppColor.greyColor),
                                                  borderRadius: BorderRadius.circular(8)
                                              ),child: Padding(
                                                padding: const EdgeInsets.symmetric(horizontal: 10),
                                                child: TextFormField(
                                                  style: TextStyle(color: AppColor.whiteColor,fontSize: 12,
                                                      fontWeight: FontWeight.w600),
                                                  decoration: InputDecoration(
                                                    border: InputBorder.none,
                                                    hintText: "Enter Your Phone",
                                                    hintStyle: TextStyle(color: AppColor.whiteColor,fontSize: 12,
                                                        fontWeight: FontWeight.w600),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 15,),
                                        Row(
                                          children: [
                                            Container(
                                              height: MediaQuery.of(context).size.height*0.08,
                                              width: MediaQuery.of(context).size.width*0.2,
                                              decoration: BoxDecoration(
                                                  color: AppColor.lightGreyColor,
                                                  border: Border.all(color: AppColor.greyColor),
                                                  borderRadius: BorderRadius.circular(8)
                                              ),child: Padding(
                                                padding: const EdgeInsets.symmetric(horizontal: 10),
                                                child: TextFormField(
                                                  style: TextStyle(color: AppColor.whiteColor,fontSize: 12,
                                                      fontWeight: FontWeight.w600),
                                                  decoration: InputDecoration(
                                                    border: InputBorder.none,
                                                    hintText: "Enter Your Email",
                                                    hintStyle: TextStyle(color: AppColor.whiteColor,fontSize: 12,
                                                        fontWeight: FontWeight.w600),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: 20,),
                                            Container(
                                              height: MediaQuery.of(context).size.height*0.08,
                                              width: MediaQuery.of(context).size.width*0.2,
                                              decoration: BoxDecoration(
                                                  color: AppColor.lightGreyColor,
                                                  border: Border.all(color: AppColor.greyColor),
                                                  borderRadius: BorderRadius.circular(8)
                                              ),child: Padding(
                                                padding: const EdgeInsets.symmetric(horizontal: 10),
                                                child: TextFormField(
                                                  style: TextStyle(color: AppColor.whiteColor,fontSize: 12,
                                                      fontWeight: FontWeight.w600),
                                                  decoration: InputDecoration(
                                                    border: InputBorder.none,
                                                    hintText: "Enter Your Subject",
                                                    hintStyle: TextStyle(color: AppColor.whiteColor,fontSize: 12,
                                                        fontWeight: FontWeight.w600),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 15,),
                                        Container(
                                          height: MediaQuery.of(context).size.height*0.32,
                                          width: MediaQuery.of(context).size.width*0.48,
                                          decoration: BoxDecoration(
                                              color: AppColor.lightGreyColor,
                                              borderRadius: BorderRadius.circular(8),
                                              border: Border.all(color: AppColor.lightGreyColor)
                                          ),child: Padding(padding: EdgeInsets.symmetric(horizontal: 10),
                                            child: TextFormField(
                                              maxLines: null,
                                              style: TextStyle(color: AppColor.whiteColor,fontSize: 12,
                                                  fontWeight: FontWeight.w600),
                                              decoration: InputDecoration(
                                                border: InputBorder.none,
                                                hintText: "Type Your Message",
                                                hintStyle: TextStyle(color: AppColor.whiteColor,fontSize: 12,
                                                    fontWeight: FontWeight.w600),
                                              ),
                                            ),),
                                        ),
                                        SizedBox(height: 15,),
                                        Align(alignment: Alignment.center,
                                          child: Container(
                                              height: MediaQuery.of(context).size.height*0.06,
                                              width: MediaQuery.of(context).size.width*0.17,
                                              decoration: BoxDecoration(
                                                  color: AppColor.lightGreyColor,
                                                  border: Border.all(color: AppColor.greyColor),
                                                  borderRadius: BorderRadius.circular(8)
                                              ),child: Center(
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [
                                                    TextWidget(text: "Send Message", color: AppColor.whiteColor,
                                                        fontsize: 12, fontWeight: FontWeight.w600),
                                                    SizedBox(width: 10,),
                                                    Icon(Icons.telegram_outlined,color: AppColor.whiteColor,)
                                                  ],
                                                ),
                                              )
                                          ),)
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],)

                      ],),
                  )
                ],),
            ),
          ),)
    );
  }
}

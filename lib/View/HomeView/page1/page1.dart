// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:portfolio/Controller/Widgets/AppColor/appColor.dart';
// import 'package:portfolio/Controller/Widgets/appAssets/appAssets.dart';
// import 'package:portfolio/Controller/Widgets/smallButton/smallButton.dart';
// import 'package:portfolio/Controller/Widgets/textWidget/textWidget.dart';
//
// class Page1 extends StatefulWidget {
//   const Page1({super.key});
//
//   @override
//   State<Page1> createState() => _Page1State();
// }
//
// class _Page1State extends State<Page1> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         height: MediaQuery.of(context).size.height*0.95,
//         width: MediaQuery.of(context).size.width*1,
//       color: AppColor.lightGreyColor,
//         child: Padding(
//           padding: const EdgeInsets.symmetric(
//               horizontal: 50,vertical: 50),
//           child: Row(
//             children: [
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 mainAxisAlignment: MainAxisAlignment.end,
//                 children: [
//                   // SizedBox(height: 100,),
//                 Row(children: [
//                   TextWidget(text: "Hello,", color: AppColor.whiteColor,
//                       fontsize: 20, fontWeight: FontWeight.w600),
//                   TextWidget(text: "I'm", color: AppColor.redColor,
//                       fontsize: 20, fontWeight: FontWeight.w600)
//                 ],),
//                   TextWidget(text: "Hafiz Muhammad Abd Ur Rehman",
//                     color: AppColor.whiteColor, fontsize: 30,
//                     fontWeight: FontWeight.w600),
//                   SizedBox(height: 5,),
//                   TextWidget(text: "Flutter Designer And Flutter Developer",
//                       color: AppColor.whiteColor, fontsize: 25,
//                       fontWeight: FontWeight.w600),
//                   SizedBox(height: 20,),
//                   TextWidget(text: "I’m a Flutter Developer and UI/UX Designer specializing in creating high-quality, \n "
//                       "cross-platform mobile apps. I combine clean code with intuitive design to  build \n "
//                       "fast, responsive, and user-friendly applications.My goal is to deliver seamless \n "
//                       "digital experiences that meet both user needs and business goals.",
//                       color: AppColor.whiteColor, fontsize: 14, fontWeight: FontWeight.w600),
//                   SizedBox(height: 30,),
//                   TextWidget(text: "FIND ME ON",
//                       color: AppColor.whiteColor, fontsize: 20,
//                       fontWeight: FontWeight.w600),
//                   SizedBox(height: 20,),
//                   Row(children: [
//                     Smallbutton(child: Icon(
//                       Icons.facebook_outlined,
//                       color: AppColor.whiteColor,),),
//                     SizedBox(width: 10,),
//                     Smallbutton(child: FaIcon(
//                       FontAwesomeIcons.twitter,
//                       color: AppColor.whiteColor,
//                       size: 20,
//                     ),),
//                     SizedBox(width: 10,),
//                     Smallbutton(child: FaIcon(
//                       FontAwesomeIcons.linkedin,
//                       color: AppColor.whiteColor,),),
//                     SizedBox(width: 10,),
//                     Smallbutton(child: FaIcon(
//                       FontAwesomeIcons.youtube,
//                       color: AppColor.whiteColor,),)
//                   ],),
//                   SizedBox(height: 20,),
//                   Row(
//                     children: [
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           TextWidget(text: "1+", color: AppColor.whiteColor,
//                               fontsize: 16, fontWeight: FontWeight.w600),
//                           SizedBox(height: 10,),
//                           TextWidget(text: "YEAR OF EXPERIENCE",
//                               color: AppColor.whiteColor, fontsize: 8,
//                               fontWeight: FontWeight.w400)
//                         ],
//                       ),
//                       SizedBox(width: 10,),
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           TextWidget(text: "5+", color: AppColor.whiteColor,
//                               fontsize: 16, fontWeight: FontWeight.w600),
//                           SizedBox(height: 10,),
//                           TextWidget(text: "GLOBAL WORKING CLIENT",
//                               color: AppColor.whiteColor, fontsize: 8,
//                               fontWeight: FontWeight.w400)
//                         ],
//                       ),
//                       SizedBox(width: 10,),
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           TextWidget(text: "3+", color: AppColor.whiteColor,
//                               fontsize: 16, fontWeight: FontWeight.w600),
//                           SizedBox(height: 10,),
//                           TextWidget(text: "AWARDS WIN",
//                               color: AppColor.whiteColor, fontsize: 8,
//                               fontWeight: FontWeight.w400)
//                         ],)
//                     ],
//                   )
//
//               ],),
//               Spacer(),
//               Column(
//                 mainAxisAlignment: MainAxisAlignment.end,
//                 children: [
//                 Image.asset(AppAssets.mainImage,scale: 5,)
//               ],)
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

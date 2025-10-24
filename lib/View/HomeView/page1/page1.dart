// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:get/get.dart';
// import 'package:go_router/go_router.dart';
// import 'package:portfolio/Constants/AppColor/appColor.dart';
// import 'package:portfolio/Constants/appAssets/appAssets.dart';
// import 'package:portfolio/Controller/HomeController/homecontroller.dart';
// import 'package:portfolio/Widgets/ResponseWidget/ResponseWidget.dart';
// import 'package:portfolio/Widgets/smallButton/smallButton.dart';
// import 'package:portfolio/Widgets/textWidget/textWidget.dart';
// import 'package:portfolio/routes/routes.dart';
// import 'package:url_launcher/url_launcher.dart';
//
// class Page1 extends StatelessWidget {
//   Page1({super.key});
//
//   final HomeController controller = Get.put(HomeController());
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: SafeArea(
//           child: ResponseWidget(
//                 mobile: Container(
//           height: MediaQuery.of(context).size.height * 095,
//           width: MediaQuery.of(context).size.width * 1,
//           decoration: BoxDecoration(
//             color: AppColor.greyColor,
//           ),
//           child: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
//             child: SingleChildScrollView(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Row(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           SizedBox(height: 10,),
//                           Row(
//                             children: [
//                               TextWidget(
//                                   text: "Hello,",
//                                   color: AppColor.whiteColor,
//                                   fontsize: 20,
//                                   fontWeight: FontWeight.w600),
//                               TextWidget(
//                                   text: "I'm",
//                                   color: AppColor.redColor,
//                                   fontsize: 20,
//                                   fontWeight: FontWeight.w600),
//                             ],
//                           ),
//                           SizedBox(height: 6,),
//                           TextWidget(
//                               text: "Hafiz Muhammad \nAbd Ur Rehman \nQasuira",
//                               color: AppColor.whiteColor,
//                               fontsize: 16,
//                               fontWeight: FontWeight.w600),
//                           SizedBox(height: 10,),
//                         ],
//                       ),
//                       Spacer(),
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Image.asset(
//                             AppAssets.mainImage,
//                               width: 100,
//                               fit: BoxFit.contain
//                           )
//                         ],
//                       )
//                     ],
//                   ),
//                   SizedBox(height: 15,),
//                   TextWidget(
//                       text: "Flutter Developer ",
//                       color: AppColor.whiteColor,
//                       fontsize: 25,
//                       fontWeight: FontWeight.w600),
//                   SizedBox(height: 10,),
//                   TextWidget(
//                       text: "Building Scalable Mobile & Web Apps with Firebase & REST APIs",
//                       color: AppColor.whiteColor,
//                       fontsize: 18,
//                       fontWeight: FontWeight.w600),
//                   SizedBox(height: 8,),
//                   TextWidget(
//                     text:
//                     "As a Flutter Developer, I specialize in creating cross-platform apps and responsive web experiences powered by Firebase and APIs. My work focuses on performance, scalability, and elegant design aligned with business goals.",
//                     color: AppColor.whiteColor,
//                     fontsize: 14,
//                     fontWeight: FontWeight.w600,
//                   ),
//                   SizedBox(height: 100),
//                   TextWidget(
//                       text: "FIND ME ON",
//                       color: AppColor.whiteColor,
//                       fontsize: 20,
//                       fontWeight: FontWeight.w600),
//                   SizedBox(
//                     height: 30,
//                   ),
//                   Row(
//                     children: [
//                       GestureDetector(
//                         onTap: () {
//                           controller.UrlLauncher("http://www.facebook.com/rehman.khan.979137");
//                         },
//                         child: Smallbutton(
//                           child: Icon(
//                             Icons.facebook_outlined,
//                             color: AppColor.whiteColor,
//                           ),
//                         ),
//                       ),
//                       SizedBox(
//                         width: 10,
//                       ),
//                       GestureDetector(
//                         onTap: () {
//                           controller.UrlLauncher("http://www.twitter.com/RehmanK72010926");
//                         },
//                         child: Smallbutton(
//                           child: FaIcon(
//                             FontAwesomeIcons.twitter,
//                             color: AppColor.whiteColor,
//                             size: 20,
//                           ),
//                         ),
//                       ),
//                       SizedBox(
//                         width: 10,
//                       ),
//                       GestureDetector(
//                         onTap: (){
//                           controller.UrlLauncher(
//                               "http://www.linkedin.com/in/rehman-khan-722142354");
//                         },
//                         child: Smallbutton(
//                           child: FaIcon(
//                             FontAwesomeIcons.linkedin,
//                             color: AppColor.whiteColor,
//                           ),
//                         ),
//                       ),
//                       SizedBox(
//                         width: 10,
//                       ),
//                       InkWell(
//                         onTap: () {
//                           controller.UrlLauncher("http://www.instagram.com/rehman12870");
//                         },
//                         child: Smallbutton(
//                           child: FaIcon(
//                             FontAwesomeIcons.instagram,
//                             color: AppColor.whiteColor,
//                           ),
//                         ),
//                       )
//                     ],
//                   ),
//                   SizedBox(
//                     height: 20,
//                   ),
//                   Row(
//                     children: [
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           TextWidget(
//                               text: "1+",
//                               color: AppColor.whiteColor,
//                               fontsize: 18,
//                               fontWeight: FontWeight.w600),
//                           SizedBox(
//                             height: 10,
//                           ),
//                           TextWidget(
//                               text: "YEAR OF EXPERIENCE",
//                               color: AppColor.whiteColor,
//                               fontsize: 12,
//                               fontWeight: FontWeight.w400)
//                         ],
//                       ),
//                       SizedBox(
//                         width: 20,
//                       ),
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           TextWidget(
//                               text: "5+",
//                               color: AppColor.whiteColor,
//                               fontsize: 18,
//                               fontWeight: FontWeight.w600),
//                           SizedBox(
//                             height: 10,
//                           ),
//                           TextWidget(
//                               text: "GLOBAL WORKING CLIENT",
//                               color: AppColor.whiteColor,
//                               fontsize: 12,
//                               fontWeight: FontWeight.w400)
//                         ],
//                       ),
//                     ],
//                   ),
//                   SizedBox(height: 10,),
//                   Row(children: [
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         TextWidget(
//                             text: "3+",
//                             color: AppColor.whiteColor,
//                             fontsize: 18,
//                             fontWeight: FontWeight.w600),
//                         SizedBox(
//                           height: 10,
//                         ),
//                         TextWidget(
//                             text: "AWARDS WIN",
//                             color: AppColor.whiteColor,
//                             fontsize: 12,
//                             fontWeight: FontWeight.w400)
//                       ],
//                     )
//                   ],),
//                   SizedBox(height: 20,),
//                 ],
//               ),
//             ),
//           ),
//                 ),
//                 tablet: Container(
//                   height: MediaQuery.of(context).size.height * 095,
//                   width: MediaQuery.of(context).size.width * 1,
//                   decoration: BoxDecoration(
//                     color: AppColor.greyColor,
//                   ),
//                   child: Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
//                     child: SingleChildScrollView(
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           SingleChildScrollView(
//                             scrollDirection: Axis.horizontal,
//                             child: ConstrainedBox(
//                               constraints: BoxConstraints(maxWidth: 700),
//                               child: Row(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Column(
//                                     crossAxisAlignment: CrossAxisAlignment.start,
//                                     children: [
//                                       SizedBox(height: 10,),
//                                       Row(
//                                         children: [
//                                           TextWidget(
//                                               text: "Hello,",
//                                               color: AppColor.whiteColor,
//                                               fontsize: 30,
//                                               fontWeight: FontWeight.w600),
//                                           TextWidget(
//                                               text: "I'm",
//                                               color: AppColor.redColor,
//                                               fontsize: 30,
//                                               fontWeight: FontWeight.w600),
//                                         ],
//                                       ),
//                                       SizedBox(height: 10,),
//                                       TextWidget(
//                                           text: "Hafiz Muhammad \nAbd Ur Rehman \nQasuria",
//                                           color: AppColor.whiteColor,
//                                           fontsize: 45,
//                                           fontWeight: FontWeight.w600),
//                                     ],
//                                   ),
//                                   Spacer(),
//                                   Column(
//                                     crossAxisAlignment: CrossAxisAlignment.end,
//                                     children: [
//                                       Image.asset(
//                                           AppAssets.mainImage,
//                                           width: 250,
//                                       )
//                                     ],
//                                   )
//                                 ],
//                               ),
//                             ),
//                           ),
//                           SizedBox(height: 20,),
//                           TextWidget(
//                               text: "Flutter Developer",
//                               color: AppColor.whiteColor,
//                               fontsize: 35,
//                               fontWeight: FontWeight.w600),
//                           SizedBox(height: 15,),
//                           TextWidget(
//                               text: "Building Scalable Mobile & Web Apps with Firebase & REST APIs",
//                               color: AppColor.whiteColor,
//                               fontsize: 25,
//                               fontWeight: FontWeight.w600),
//                           SizedBox(height: 12,),
//                           TextWidget(
//                             text:
//                             "As a Flutter Developer, I specialize in creating cross-platform apps and responsive web experiences powered by Firebase and APIs. My work focuses on performance, scalability, and elegant design aligned with business goals.",
//                             color: AppColor.whiteColor,
//                             fontsize: 19,
//                             fontWeight: FontWeight.w600,
//                           ),
//                           SizedBox(height: 100,),
//                           TextWidget(
//                               text: "FIND ME ON",
//                               color: AppColor.whiteColor,
//                               fontsize: 20,
//                               fontWeight: FontWeight.w600),
//                           SizedBox(
//                             height: 30,
//                           ),
//                           Row(
//                             children: [
//                               GestureDetector(
//                                 onTap: () {
//                                   controller.UrlLauncher("http://www.facebook.com/rehman.khan.979137");
//                                 },
//                                 child: Smallbutton(
//                                   child: Icon(
//                                     Icons.facebook_outlined,
//                                     color: AppColor.whiteColor,
//                                   ),
//                                 ),
//                               ),
//                               SizedBox(
//                                 width: 10,
//                               ),
//                               GestureDetector(
//                                 onTap: () {
//                                   controller.UrlLauncher("http://www.twitter.com/RehmanK72010926");
//                                 },
//                                 child: Smallbutton(
//                                   child: FaIcon(
//                                     FontAwesomeIcons.twitter,
//                                     color: AppColor.whiteColor,
//                                     size: 20,
//                                   ),
//                                 ),
//                               ),
//                               SizedBox(
//                                 width: 10,
//                               ),
//                               GestureDetector(
//                                 onTap: (){
//                                   controller.UrlLauncher(
//                                       "http://www.linkedin.com/in/rehman-khan-722142354");
//                                 },
//                                 child: Smallbutton(
//                                   child: FaIcon(
//                                     FontAwesomeIcons.linkedin,
//                                     color: AppColor.whiteColor,
//                                   ),
//                                 ),
//                               ),
//                               SizedBox(
//                                 width: 10,
//                               ),
//                               InkWell(
//                                 onTap: () {
//                                   controller.UrlLauncher("http://www.instagram.com/rehman12870");
//                                 },
//                                 child: Smallbutton(
//                                   child: FaIcon(
//                                     FontAwesomeIcons.instagram,
//                                     color: AppColor.whiteColor,
//                                   ),
//                                 ),
//                               )
//                             ],
//                           ),
//                           SizedBox(
//                             height: 20,
//                           ),
//                           Row(
//                             children: [
//                               Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   TextWidget(
//                                       text: "1+",
//                                       color: AppColor.whiteColor,
//                                       fontsize: 18,
//                                       fontWeight: FontWeight.w600),
//                                   SizedBox(
//                                     height: 10,
//                                   ),
//                                   TextWidget(
//                                       text: "YEAR OF EXPERIENCE",
//                                       color: AppColor.whiteColor,
//                                       fontsize: 12,
//                                       fontWeight: FontWeight.w400)
//                                 ],
//                               ),
//                               SizedBox(
//                                 width: 20,
//                               ),
//                               Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   TextWidget(
//                                       text: "5+",
//                                       color: AppColor.whiteColor,
//                                       fontsize: 18,
//                                       fontWeight: FontWeight.w600),
//                                   SizedBox(
//                                     height: 10,
//                                   ),
//                                   TextWidget(
//                                       text: "GLOBAL WORKING CLIENT",
//                                       color: AppColor.whiteColor,
//                                       fontsize: 12,
//                                       fontWeight: FontWeight.w400)
//                                 ],
//                               ),
//                               SizedBox(width: 20,),
//                               Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   TextWidget(
//                                       text: "3+",
//                                       color: AppColor.whiteColor,
//                                       fontsize: 18,
//                                       fontWeight: FontWeight.w600),
//                                   SizedBox(
//                                     height: 10,
//                                   ),
//                                   TextWidget(
//                                       text: "AWARDS WIN",
//                                       color: AppColor.whiteColor,
//                                       fontsize: 12,
//                                       fontWeight: FontWeight.w400)
//                                 ],
//                               )
//                             ],
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//                 desktop: Container(
//           height: MediaQuery.of(context).size.height * 0.95,
//           width: MediaQuery.of(context).size.width * 1,
//           color: AppColor.greyColor,
//           child: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 50),
//             child: Row(
//               children: [
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     // SizedBox(height: 100,),
//                     Row(
//                       children: [
//                         TextWidget(
//                             text: "Hello,",
//                             color: AppColor.whiteColor,
//                             fontsize: 20,
//                             fontWeight: FontWeight.w600),
//                         TextWidget(
//                             text: "I'm",
//                             color: AppColor.redColor,
//                             fontsize: 20,
//                             fontWeight: FontWeight.w600)
//                       ],
//                     ),
//                     TextWidget(
//                         text: "Hafiz Muhammad Abd Ur Rehman Qasuria",
//                         color: AppColor.whiteColor,
//                         fontsize: 30,
//                         fontWeight: FontWeight.w600),
//                     SizedBox(
//                       height: 5,
//                     ),
//                     TextWidget(
//                         text: "Flutter Developer",
//                         color: AppColor.whiteColor,
//                         fontsize: 25,
//                         fontWeight: FontWeight.w600),
//                     SizedBox(
//                       height: 10,
//                     ),
//                     TextWidget(
//                         text: "Building Scalable Mobile & Web Apps with Firebase & REST APIs",
//                         color: AppColor.whiteColor,
//                         fontsize: 20,
//                         fontWeight: FontWeight.w600),
//                     SizedBox(
//                       height: 10,
//                     ),
//                     TextWidget(
//                         text:
//                             "As a Flutter Developer, I specialize in creating cross-platform apps and responsive web experiences"
//                             "\npowered by Firebase and APIs. My work focuses on performance, scalability, and elegant design aligned"
//                             "\n with business goals.",
//                         color: AppColor.whiteColor,
//                         fontsize: 14,
//                         fontWeight: FontWeight.w600),
//                     SizedBox(
//                       height: 30,
//                     ),
//                     TextWidget(
//                         text: "FIND ME ON",
//                         color: AppColor.whiteColor,
//                         fontsize: 20,
//                         fontWeight: FontWeight.w600),
//                     SizedBox(
//                       height: 20,
//                     ),
//                     Row(
//                       children: [
//                         GestureDetector(
//                           onTap: () {
//                             controller.UrlLauncher("http://www.facebook.com/rehman.khan.979137");
//                           },
//                           child: Smallbutton(
//                             child: Icon(
//                               Icons.facebook_outlined,
//                               color: AppColor.whiteColor,
//                             ),
//                           ),
//                         ),
//                         SizedBox(
//                           width: 10,
//                         ),
//                         GestureDetector(
//                           onTap: () {
//                             controller.UrlLauncher("http://www.twitter.com/RehmanK72010926");
//                           },
//                           child: Smallbutton(
//                             child: FaIcon(
//                               FontAwesomeIcons.twitter,
//                               color: AppColor.whiteColor,
//                               size: 20,
//                             ),
//                           ),
//                         ),
//                         SizedBox(
//                           width: 10,
//                         ),
//                         GestureDetector(
//                           onTap: (){
//                             controller.UrlLauncher(
//                                 "http://www.linkedin.com/in/rehman-khan-722142354");
//                           },
//                           child: Smallbutton(
//                             child: FaIcon(
//                               FontAwesomeIcons.linkedin,
//                               color: AppColor.whiteColor,
//                             ),
//                           ),
//                         ),
//                         SizedBox(
//                           width: 10,
//                         ),
//                         InkWell(
//                           onTap: () {
//                             controller.UrlLauncher("http://www.instagram.com/rehman12870");
//                           },
//                           child: Smallbutton(
//                             child: FaIcon(
//                               FontAwesomeIcons.instagram,
//                               color: AppColor.whiteColor,
//                             ),
//                           ),
//                         )
//                       ],
//                     ),
//                     SizedBox(
//                       height: 20,
//                     ),
//                     Row(
//                       children: [
//                         Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             TextWidget(
//                                 text: "1+",
//                                 color: AppColor.whiteColor,
//                                 fontsize: 16,
//                                 fontWeight: FontWeight.w600),
//                             SizedBox(
//                               height: 10,
//                             ),
//                             TextWidget(
//                                 text: "YEAR OF EXPERIENCE",
//                                 color: AppColor.whiteColor,
//                                 fontsize: 8,
//                                 fontWeight: FontWeight.w400)
//                           ],
//                         ),
//                         SizedBox(
//                           width: 10,
//                         ),
//                         Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             TextWidget(
//                                 text: "5+",
//                                 color: AppColor.whiteColor,
//                                 fontsize: 16,
//                                 fontWeight: FontWeight.w600),
//                             SizedBox(
//                               height: 10,
//                             ),
//                             TextWidget(
//                                 text: "GLOBAL WORKING CLIENT",
//                                 color: AppColor.whiteColor,
//                                 fontsize: 8,
//                                 fontWeight: FontWeight.w400)
//                           ],
//                         ),
//                         SizedBox(
//                           width: 10,
//                         ),
//                         Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             TextWidget(
//                                 text: "3+",
//                                 color: AppColor.whiteColor,
//                                 fontsize: 16,
//                                 fontWeight: FontWeight.w600),
//                             SizedBox(
//                               height: 10,
//                             ),
//                             TextWidget(
//                                 text: "AWARDS WIN",
//                                 color: AppColor.whiteColor,
//                                 fontsize: 8,
//                                 fontWeight: FontWeight.w400)
//                           ],
//                         )
//                       ],
//                     )
//                   ],
//                 ),
//                 Spacer(),
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.end,
//                   children: [
//                     Image.asset(
//                       AppAssets.mainImage,
//                       scale: 3.01,
//                     )
//                   ],
//                 )
//               ],
//             ),
//           ),
//                 ),
//               ),
//         ));
//   }
// }




import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:portfolio/Constants/AppColor/appColor.dart';
import 'package:portfolio/Constants/AppAssets/appAssets.dart';
import 'package:portfolio/Controller/HomeController/homecontroller.dart';
import 'package:portfolio/Widgets/ResponseWidget/ResponseWidget.dart';
import 'package:portfolio/Widgets/smallButton/smallButton.dart';
import 'package:portfolio/Widgets/textWidget/textWidget.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  final HomeController controller = Get.put(HomeController());

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // Preload the main image for instant display
    precacheImage(AssetImage(AppAssets.mainImage), context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ResponseWidget(
          mobile: _buildMobileLayout(context),
          tablet: _buildTabletLayout(context),
          desktop: _buildDesktopLayout(context),
        ),
      ),
    );
  }

  Widget _buildMobileLayout(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.95,
      width: MediaQuery.of(context).size.width,
      color: AppColor.greyColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10),
                      Row(
                        children: [
                          TextWidget(
                              text: "Hello,",
                              color: AppColor.whiteColor,
                              fontsize: 20,
                              fontWeight: FontWeight.w600),
                          TextWidget(
                              text: " I'm",
                              color: AppColor.redColor,
                              fontsize: 20,
                              fontWeight: FontWeight.w600),
                        ],
                      ),
                      SizedBox(height: 6),
                      TextWidget(
                          text: "Hafiz Muhammad \nAbd Ur Rehman \nQasuira",
                          color: AppColor.whiteColor,
                          fontsize: 16,
                          fontWeight: FontWeight.w600),
                      SizedBox(height: 10),
                    ],
                  ),
                  Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Preloaded image will appear instantly
                      Image.asset(
                        AppAssets.mainImage,
                        width: 100,
                        fit: BoxFit.contain,
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(height: 15),
              TextWidget(
                  text: "Flutter Developer",
                  color: AppColor.whiteColor,
                  fontsize: 25,
                  fontWeight: FontWeight.w600),
              SizedBox(height: 10),
              TextWidget(
                  text:
                  "Building Scalable Mobile & Web Apps with Firebase & REST APIs",
                  color: AppColor.whiteColor,
                  fontsize: 18,
                  fontWeight: FontWeight.w600),
              SizedBox(height: 8),
              TextWidget(
                text:
                "As a Flutter Developer, I specialize in creating cross-platform apps and responsive web experiences powered by Firebase and APIs. My work focuses on performance, scalability, and elegant design aligned with business goals.",
                color: AppColor.whiteColor,
                fontsize: 14,
                fontWeight: FontWeight.w600,
              ),
              SizedBox(height: 100),
              _buildSocialButtons(),
              SizedBox(height: 20),
              _buildStatsRow(),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTabletLayout(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.95,
      width: MediaQuery.of(context).size.width,
      color: AppColor.greyColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: 700),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 10),
                          Row(
                            children: [
                              TextWidget(
                                  text: "Hello,",
                                  color: AppColor.whiteColor,
                                  fontsize: 30,
                                  fontWeight: FontWeight.w600),
                              TextWidget(
                                  text: " I'm",
                                  color: AppColor.redColor,
                                  fontsize: 30,
                                  fontWeight: FontWeight.w600),
                            ],
                          ),
                          SizedBox(height: 10),
                          TextWidget(
                              text: "Hafiz Muhammad \nAbd Ur Rehman \nQasuira",
                              color: AppColor.whiteColor,
                              fontsize: 45,
                              fontWeight: FontWeight.w600),
                        ],
                      ),
                      Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Image.asset(
                            AppAssets.mainImage,
                            width: 250,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              TextWidget(
                  text: "Flutter Developer",
                  color: AppColor.whiteColor,
                  fontsize: 35,
                  fontWeight: FontWeight.w600),
              SizedBox(height: 15),
              TextWidget(
                  text:
                  "Building Scalable Mobile & Web Apps with Firebase & REST APIs",
                  color: AppColor.whiteColor,
                  fontsize: 25,
                  fontWeight: FontWeight.w600),
              SizedBox(height: 12),
              TextWidget(
                text:
                "As a Flutter Developer, I specialize in creating cross-platform apps and responsive web experiences powered by Firebase and APIs. My work focuses on performance, scalability, and elegant design aligned with business goals.",
                color: AppColor.whiteColor,
                fontsize: 19,
                fontWeight: FontWeight.w600,
              ),
              SizedBox(height: 100),
              _buildSocialButtons(),
              SizedBox(height: 20),
              _buildStatsRow(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDesktopLayout(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.95,
      width: MediaQuery.of(context).size.width,
      color: AppColor.greyColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 50),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      TextWidget(
                          text: "Hello,",
                          color: AppColor.whiteColor,
                          fontsize: 20,
                          fontWeight: FontWeight.w600),
                      TextWidget(
                          text: " I'm",
                          color: AppColor.redColor,
                          fontsize: 20,
                          fontWeight: FontWeight.w600),
                    ],
                  ),
                  TextWidget(
                      text: "Hafiz Muhammad Abd Ur Rehman Qasuria",
                      color: AppColor.whiteColor,
                      fontsize: 30,
                      fontWeight: FontWeight.w600),
                  SizedBox(height: 5),
                  TextWidget(
                      text: "Flutter Developer",
                      color: AppColor.whiteColor,
                      fontsize: 25,
                      fontWeight: FontWeight.w600),
                  SizedBox(height: 10),
                  TextWidget(
                      text:
                      "Building Scalable Mobile & Web Apps with Firebase & REST APIs",
                      color: AppColor.whiteColor,
                      fontsize: 20,
                      fontWeight: FontWeight.w600),
                  SizedBox(height: 10),
                  TextWidget(
                      text:
                      "As a Flutter Developer, I specialize in creating cross-platform apps and responsive web experiences"
                          "\npowered by Firebase and APIs. My work focuses on performance, scalability, and elegant design aligned"
                          "\nwith business goals.",
                      color: AppColor.whiteColor,
                      fontsize: 14,
                      fontWeight: FontWeight.w600),
                  SizedBox(height: 30),
                  _buildSocialButtons(),
                  SizedBox(height: 20),
                  _buildStatsRow(),
                ],
              ),
            ),
            Image.asset(
              AppAssets.mainImage,
              scale: 3.0,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSocialButtons() {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            controller.UrlLauncher("http://www.facebook.com/rehman.khan.979137");
          },
          child: Smallbutton(child: Icon(Icons.facebook_outlined, color: AppColor.whiteColor)),
        ),
        SizedBox(width: 10),
        GestureDetector(
          onTap: () {
            controller.UrlLauncher("http://www.twitter.com/RehmanK72010926");
          },
          child: Smallbutton(child: FaIcon(FontAwesomeIcons.twitter, color: AppColor.whiteColor, size: 20)),
        ),
        SizedBox(width: 10),
        GestureDetector(
          onTap: () {
            controller.UrlLauncher("http://www.linkedin.com/in/rehman-khan-722142354");
          },
          child: Smallbutton(child: FaIcon(FontAwesomeIcons.linkedin, color: AppColor.whiteColor)),
        ),
        SizedBox(width: 10),
        GestureDetector(
          onTap: () {
            controller.UrlLauncher("http://www.instagram.com/rehman12870");
          },
          child: Smallbutton(child: FaIcon(FontAwesomeIcons.instagram, color: AppColor.whiteColor)),
        ),
      ],
    );
  }

  Widget _buildStatsRow() {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextWidget(text: "1+", color: AppColor.whiteColor, fontsize: 18, fontWeight: FontWeight.w600),
            SizedBox(height: 10),
            TextWidget(text: "YEAR OF EXPERIENCE", color: AppColor.whiteColor, fontsize: 12, fontWeight: FontWeight.w400),
          ],
        ),
        SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextWidget(text: "5+", color: AppColor.whiteColor, fontsize: 18, fontWeight: FontWeight.w600),
            SizedBox(height: 10),
            TextWidget(text: "GLOBAL WORKING CLIENT", color: AppColor.whiteColor, fontsize: 12, fontWeight: FontWeight.w400),
          ],
        ),
        SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextWidget(text: "3+", color: AppColor.whiteColor, fontsize: 18, fontWeight: FontWeight.w600),
            SizedBox(height: 10),
            TextWidget(text: "AWARDS WIN", color: AppColor.whiteColor, fontsize: 12, fontWeight: FontWeight.w400),
          ],
        ),
      ],
    );
  }
}

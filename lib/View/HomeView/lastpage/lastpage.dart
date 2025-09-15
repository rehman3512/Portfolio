// import 'package:flutter/material.dart';
// import 'package:portfolio/Widgets/AppColor/appColor.dart';
// import 'package:portfolio/Widgets/ResponseWidget/ResponseWidget.dart';
// import 'package:portfolio/Widgets/smallContainerWidget/smallContainerWidget.dart';
// import 'package:portfolio/Widgets/textWidget/textWidget.dart';
// import 'package:portfolio/mainscreenview.dart';
//
// class LastPage extends StatefulWidget {
//   const LastPage({super.key});
//
//   @override
//   State<LastPage> createState() => _LastPageState();
// }
//
// class _LastPageState extends State<LastPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ResponseWidget(
//           mobile:  Container(
//             height: MediaQuery.of(context).size.height*0.95,
//             width: MediaQuery.of(context).size.width*1,
//             color: AppColor.redColor,
//           ),
//           tablet:  Container(
//             height: MediaQuery.of(context).size.height*0.95,
//             width: MediaQuery.of(context).size.width*1,
//             color: AppColor.blackColor,
//           ),
//           desktop: Container(
//             height: MediaQuery.of(context).size.height*0.95,
//             width: MediaQuery.of(context).size.width*1,
//             color: AppColor.lightGreyColor,
//             child: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Stack(
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       children: [
//                         TextWidget(text: "Contact", color: AppColor.redColor,
//                             fontsize: 16, fontWeight: FontWeight.w600),
//                         TextWidget(text: "Contact with me", color: AppColor.whiteColor,
//                             fontsize: 28, fontWeight: FontWeight.w600),
//                         SizedBox(height: 20,),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Column(
//                               children: [
//                                 SmallContainerWidget(child: Column(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   crossAxisAlignment: CrossAxisAlignment.center,
//                                   children: [
//                                     Icon(Icons.map_outlined,color: AppColor.redColor,
//                                       size: 25,),
//                                     SizedBox(height: 10,),
//                                     TextWidget(text: "REHMAN DEVELOPER", color: AppColor.whiteColor,
//                                         fontsize: 8, fontWeight: FontWeight.w600)
//                                   ],)
//                                 ),
//                                 SizedBox(height: 10,),
//                                 SmallContainerWidget(child: Column(
//                                   crossAxisAlignment: CrossAxisAlignment.center,
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   children: [
//                                     Icon(Icons.phone_outlined,color: AppColor.redColor,
//                                       size: 25,),
//                                     SizedBox(height: 10,),
//                                     TextWidget(text: "+92-3499-856-995", color: AppColor.whiteColor,
//                                         fontsize: 8, fontWeight: FontWeight.w600)
//                                   ],)),
//                                 SizedBox(height: 10,),
//                                 SmallContainerWidget(child: Column(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   crossAxisAlignment: CrossAxisAlignment.center,
//                                   children: [
//                                     Icon(Icons.email_outlined,color: AppColor.redColor,
//                                       size: 25,),
//                                     SizedBox(height: 10,),
//                                     TextWidget(text: "rehmankh2256@gmail.com", color: AppColor.whiteColor,
//                                         fontsize: 8, fontWeight: FontWeight.w600)
//                                   ],)
//                                 ),
//                                 SizedBox(height: 10,),
//                                 SmallContainerWidget(child: Column(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   crossAxisAlignment: CrossAxisAlignment.center,
//                                   children: [
//                                     Icon(Icons.check_outlined,color: AppColor.redColor,
//                                       size: 25,),
//                                     SizedBox(height: 10,),
//                                     TextWidget(text: "Freelance Available", color: AppColor.whiteColor,
//                                         fontsize: 8, fontWeight: FontWeight.w600)
//                                   ],)
//                                 ),
//                               ],),
//                             SizedBox(width: 20,),
//                             Container(height: MediaQuery.of(context).size.height * 0.95,
//                               width: 600,
//                               decoration: BoxDecoration(
//                                   color: AppColor.greyColor,
//                                   borderRadius: BorderRadius.circular(8),
//                                   border: Border.all(color: AppColor.greyColor)
//                               ),child: Stack(
//                                 children: [
//                                   Padding(
//                                     padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 30),
//                                     child: Column(
//                                       crossAxisAlignment: CrossAxisAlignment.start,
//                                       children: [
//                                         Row(
//                                           children: [
//                                             Container(
//                                               height: MediaQuery.of(context).size.height*0.08,
//                                               width: MediaQuery.of(context).size.width*0.2,
//                                               decoration: BoxDecoration(
//                                                   color: AppColor.lightGreyColor,
//                                                   border: Border.all(color: AppColor.greyColor),
//                                                   borderRadius: BorderRadius.circular(8)
//                                               ),child: Padding(
//                                                 padding: const EdgeInsets.symmetric(horizontal: 10),
//                                                 child: TextFormField(
//                                                   style: TextStyle(color: AppColor.whiteColor,fontSize: 12,
//                                                       fontWeight: FontWeight.w600),
//                                                   decoration: InputDecoration(
//                                                     border: InputBorder.none,
//                                                     hintText: "Enter Your Name",
//                                                     hintStyle: TextStyle(color: AppColor.whiteColor,fontSize: 12,
//                                                         fontWeight: FontWeight.w600),
//                                                   ),
//                                                 ),
//                                               ),
//                                             ),
//                                             SizedBox(width: 20,),
//                                             Container(
//                                               height: MediaQuery.of(context).size.height*0.08,
//                                               width: MediaQuery.of(context).size.width*0.2,
//                                               decoration: BoxDecoration(
//                                                   color: AppColor.lightGreyColor,
//                                                   border: Border.all(color: AppColor.greyColor),
//                                                   borderRadius: BorderRadius.circular(8)
//                                               ),child: Padding(
//                                                 padding: const EdgeInsets.symmetric(horizontal: 10),
//                                                 child: TextFormField(
//                                                   style: TextStyle(color: AppColor.whiteColor,fontSize: 12,
//                                                       fontWeight: FontWeight.w600),
//                                                   decoration: InputDecoration(
//                                                     border: InputBorder.none,
//                                                     hintText: "Enter Your Phone",
//                                                     hintStyle: TextStyle(color: AppColor.whiteColor,fontSize: 12,
//                                                         fontWeight: FontWeight.w600),
//                                                   ),
//                                                 ),
//                                               ),
//                                             ),
//                                           ],
//                                         ),
//                                         SizedBox(height: 15,),
//                                         Row(
//                                           children: [
//                                             Container(
//                                               height: MediaQuery.of(context).size.height*0.08,
//                                               width: MediaQuery.of(context).size.width*0.2,
//                                               decoration: BoxDecoration(
//                                                   color: AppColor.lightGreyColor,
//                                                   border: Border.all(color: AppColor.greyColor),
//                                                   borderRadius: BorderRadius.circular(8)
//                                               ),child: Padding(
//                                                 padding: const EdgeInsets.symmetric(horizontal: 10),
//                                                 child: TextFormField(
//                                                   style: TextStyle(color: AppColor.whiteColor,fontSize: 12,
//                                                       fontWeight: FontWeight.w600),
//                                                   decoration: InputDecoration(
//                                                     border: InputBorder.none,
//                                                     hintText: "Enter Your Email",
//                                                     hintStyle: TextStyle(color: AppColor.whiteColor,fontSize: 12,
//                                                         fontWeight: FontWeight.w600),
//                                                   ),
//                                                 ),
//                                               ),
//                                             ),
//                                             SizedBox(width: 20,),
//                                             Container(
//                                               height: MediaQuery.of(context).size.height*0.08,
//                                               width: MediaQuery.of(context).size.width*0.2,
//                                               decoration: BoxDecoration(
//                                                   color: AppColor.lightGreyColor,
//                                                   border: Border.all(color: AppColor.greyColor),
//                                                   borderRadius: BorderRadius.circular(8)
//                                               ),child: Padding(
//                                                 padding: const EdgeInsets.symmetric(horizontal: 10),
//                                                 child: TextFormField(
//                                                   style: TextStyle(color: AppColor.whiteColor,fontSize: 12,
//                                                       fontWeight: FontWeight.w600),
//                                                   decoration: InputDecoration(
//                                                     border: InputBorder.none,
//                                                     hintText: "Enter Your Subject",
//                                                     hintStyle: TextStyle(color: AppColor.whiteColor,fontSize: 12,
//                                                         fontWeight: FontWeight.w600),
//                                                   ),
//                                                 ),
//                                               ),
//                                             ),
//                                           ],
//                                         ),
//                                         SizedBox(height: 15,),
//                                         Container(
//                                           height: MediaQuery.of(context).size.height*0.32,
//                                           width: MediaQuery.of(context).size.width*0.48,
//                                           decoration: BoxDecoration(
//                                               color: AppColor.lightGreyColor,
//                                               borderRadius: BorderRadius.circular(8),
//                                               border: Border.all(color: AppColor.lightGreyColor)
//                                           ),child: Padding(padding: EdgeInsets.symmetric(horizontal: 10),
//                                             child: TextFormField(
//                                               maxLines: null,
//                                               style: TextStyle(color: AppColor.whiteColor,fontSize: 12,
//                                                   fontWeight: FontWeight.w600),
//                                               decoration: InputDecoration(
//                                                 border: InputBorder.none,
//                                                 hintText: "Type Your Message",
//                                                 hintStyle: TextStyle(color: AppColor.whiteColor,fontSize: 12,
//                                                     fontWeight: FontWeight.w600),
//                                               ),
//                                             ),),
//                                         ),
//                                         SizedBox(height: 15,),
//                                         Align(alignment: Alignment.center,
//                                           child: Container(
//                                               height: MediaQuery.of(context).size.height*0.06,
//                                               width: MediaQuery.of(context).size.width*0.17,
//                                               decoration: BoxDecoration(
//                                                   color: AppColor.lightGreyColor,
//                                                   border: Border.all(color: AppColor.greyColor),
//                                                   borderRadius: BorderRadius.circular(8)
//                                               ),child: Center(
//                                                 child: Row(
//                                                   mainAxisAlignment: MainAxisAlignment.center,
//                                                   children: [
//                                                     TextWidget(text: "Send Message", color: AppColor.whiteColor,
//                                                         fontsize: 12, fontWeight: FontWeight.w600),
//                                                     SizedBox(width: 10,),
//                                                     Icon(Icons.telegram_outlined,color: AppColor.whiteColor,)
//                                                   ],
//                                                 ),
//                                               )
//                                           ),)
//                                       ],
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             )
//                           ],)
//
//                       ],),
//                   )
//                 ],),
//             ),
//           ),)
//     );
//   }
// }



import 'package:flutter/material.dart';
import 'package:portfolio/Constants/AppColor/appColor.dart';
import 'package:portfolio/Widgets/ResponseWidget/ResponseWidget.dart';
import 'package:portfolio/Widgets/smallContainerWidget/smallContainerWidget.dart';
import 'package:portfolio/Widgets/textWidget/textWidget.dart';

class LastPage extends StatelessWidget {
  const LastPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponseWidget(
        mobile: Container(
          height: MediaQuery.of(context).size.height * 0.95,
          width: MediaQuery.of(context).size.width * 1,
          color: AppColor.redColor,
        ),
        tablet: Container(
          height: MediaQuery.of(context).size.height * 0.95,
          width: MediaQuery.of(context).size.width * 1,
          color: AppColor.blackColor,
        ),
        desktop: Container(
          height: MediaQuery.of(context).size.height * 0.95,
          width: MediaQuery.of(context).size.width * 1,
          color: AppColor.lightGreyColor,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextWidget(
                    text: "CONTACT",
                    color: AppColor.redColor,
                    fontsize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                  const SizedBox(height: 8),
                  TextWidget(
                    text: "Contact With Me",
                    color: AppColor.whiteColor,
                    fontsize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SmallContainerWidget(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.map_outlined,
                                  color: AppColor.redColor,
                                  size: 20,
                                ),
                                const SizedBox(height: 8),
                                TextWidget(
                                  text: "REHMAN DEVELOPER",
                                  color: AppColor.whiteColor,
                                  fontsize: 9,
                                  fontWeight: FontWeight.w600,
                                )
                              ],
                            ),
                          ),
                          const SizedBox(height: 12),
                          SmallContainerWidget(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.phone_outlined,
                                  color: AppColor.redColor,
                                  size: 20,
                                ),
                                const SizedBox(height: 8),
                                TextWidget(
                                  text: "+92-3499-856-995",
                                  color: AppColor.whiteColor,
                                  fontsize: 9,
                                  fontWeight: FontWeight.w600,
                                )
                              ],
                            ),
                          ),
                          const SizedBox(height: 12),
                          SmallContainerWidget(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.email_outlined,
                                  color: AppColor.redColor,
                                  size: 20,
                                ),
                                const SizedBox(height: 8),
                                TextWidget(
                                  text: "rehmankh2256@gmail.com",
                                  color: AppColor.whiteColor,
                                  fontsize: 9,
                                  fontWeight: FontWeight.w600,
                                )
                              ],
                            ),
                          ),
                          const SizedBox(height: 12),
                          SmallContainerWidget(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.check_outlined,
                                  color: AppColor.redColor,
                                  size: 20,
                                ),
                                const SizedBox(height: 8),
                                TextWidget(
                                  text: "Freelance Available",
                                  color: AppColor.whiteColor,
                                  fontsize: 9,
                                  fontWeight: FontWeight.w600,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 30),
                      Container(
                        height: 430,
                        width: 600,
                        decoration: BoxDecoration(
                          color: AppColor.greyColor,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      height: 45,
                                      decoration: BoxDecoration(
                                        color: AppColor.lightGreyColor,
                                        borderRadius: BorderRadius.circular(6),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 12),
                                        child: TextFormField(
                                          style: TextStyle(
                                            color: AppColor.whiteColor,
                                            fontSize: 13,
                                            fontWeight: FontWeight.w500,
                                          ),
                                          decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText: "Enter Your Name",
                                            hintStyle: TextStyle(
                                              color: AppColor.whiteColor.withOpacity(0.7),
                                              fontSize: 13,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 12),
                                  Expanded(
                                    child: Container(
                                      height: 45,
                                      decoration: BoxDecoration(
                                        color: AppColor.lightGreyColor,
                                        borderRadius: BorderRadius.circular(6),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 12),
                                        child: TextFormField(
                                          style: TextStyle(
                                            color: AppColor.whiteColor,
                                            fontSize: 13,
                                            fontWeight: FontWeight.w500,
                                          ),
                                          decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText: "Enter Your Phone",
                                            hintStyle: TextStyle(
                                              color: AppColor.whiteColor.withOpacity(0.7),
                                              fontSize: 13,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 12),
                              Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      height: 45,
                                      decoration: BoxDecoration(
                                        color: AppColor.lightGreyColor,
                                        borderRadius: BorderRadius.circular(6),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 12),
                                        child: TextFormField(
                                          style: TextStyle(
                                            color: AppColor.whiteColor,
                                            fontSize: 13,
                                            fontWeight: FontWeight.w500,
                                          ),
                                          decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText: "Enter Your Email",
                                            hintStyle: TextStyle(
                                              color: AppColor.whiteColor.withOpacity(0.7),
                                              fontSize: 13,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 12),
                                  Expanded(
                                    child: Container(
                                      height: 45,
                                      decoration: BoxDecoration(
                                        color: AppColor.lightGreyColor,
                                        borderRadius: BorderRadius.circular(6),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 12),
                                        child: TextFormField(
                                          style: TextStyle(
                                            color: AppColor.whiteColor,
                                            fontSize: 13,
                                            fontWeight: FontWeight.w500,
                                          ),
                                          decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText: "Enter Your Subject",
                                            hintStyle: TextStyle(
                                              color: AppColor.whiteColor.withOpacity(0.7),
                                              fontSize: 13,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 12),
                              Container(
                                height: 180,
                                decoration: BoxDecoration(
                                  color: AppColor.lightGreyColor,
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                                  child: TextFormField(
                                    maxLines: null,
                                    expands: true,
                                    style: TextStyle(
                                      color: AppColor.whiteColor,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "Type Your Message",
                                      hintStyle: TextStyle(
                                        color: AppColor.whiteColor.withOpacity(0.7),
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 20),
                              Container(
                                height: 40,
                                width: 250,
                                decoration: BoxDecoration(
                                  color: AppColor.lightGreyColor,
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                child: const Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Send Message",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 13,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      SizedBox(width: 8),
                                      Icon(
                                        Icons.send,
                                        color: Colors.white,
                                        size: 16,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
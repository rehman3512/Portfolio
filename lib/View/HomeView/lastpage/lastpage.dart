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
          color: AppColor.greyColor,
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
        // mobile: Container(
        //   height: MediaQuery.of(context).size.height * 0.95,
        //   width: MediaQuery.of(context).size.width * 1,
        //   color: AppColor.greyColor,
        //   child: SingleChildScrollView(
        //     child: Padding(
        //       padding: const EdgeInsets.all(30.0),
        //       child: Column(
        //         mainAxisAlignment: MainAxisAlignment.center,
        //         crossAxisAlignment: CrossAxisAlignment.center,
        //         children: [
        //           TextWidget(
        //             text: "CONTACT",
        //             color: AppColor.redColor,
        //             fontsize: 16,
        //             fontWeight: FontWeight.w600,
        //           ),
        //           const SizedBox(height: 8),
        //           TextWidget(
        //             text: "Contact With Me",
        //             color: AppColor.whiteColor,
        //             fontsize: 24,
        //             fontWeight: FontWeight.w600,
        //           ),
        //           const SizedBox(height: 30),
        //           Row(
        //             mainAxisAlignment: MainAxisAlignment.center,
        //             crossAxisAlignment: CrossAxisAlignment.start,
        //             children: [
        //               Column(
        //                 mainAxisAlignment: MainAxisAlignment.center,
        //                 children: [
        //                   SmallContainerWidget(
        //                     child: Column(
        //                       mainAxisAlignment: MainAxisAlignment.center,
        //                       crossAxisAlignment: CrossAxisAlignment.center,
        //                       children: [
        //                         Icon(
        //                           Icons.map_outlined,
        //                           color: AppColor.redColor,
        //                           size: 20,
        //                         ),
        //                         const SizedBox(height: 8),
        //                         TextWidget(
        //                           text: "REHMAN DEVELOPER",
        //                           color: AppColor.whiteColor,
        //                           fontsize: 9,
        //                           fontWeight: FontWeight.w600,
        //                         )
        //                       ],
        //                     ),
        //                   ),
        //                   const SizedBox(height: 12),
        //                   SmallContainerWidget(
        //                     child: Column(
        //                       crossAxisAlignment: CrossAxisAlignment.center,
        //                       mainAxisAlignment: MainAxisAlignment.center,
        //                       children: [
        //                         Icon(
        //                           Icons.phone_outlined,
        //                           color: AppColor.redColor,
        //                           size: 20,
        //                         ),
        //                         const SizedBox(height: 8),
        //                         TextWidget(
        //                           text: "+92-3499-856-995",
        //                           color: AppColor.whiteColor,
        //                           fontsize: 9,
        //                           fontWeight: FontWeight.w600,
        //                         )
        //                       ],
        //                     ),
        //                   ),
        //                   const SizedBox(height: 12),
        //                   SmallContainerWidget(
        //                     child: Column(
        //                       mainAxisAlignment: MainAxisAlignment.center,
        //                       crossAxisAlignment: CrossAxisAlignment.center,
        //                       children: [
        //                         Icon(
        //                           Icons.email_outlined,
        //                           color: AppColor.redColor,
        //                           size: 20,
        //                         ),
        //                         const SizedBox(height: 8),
        //                         TextWidget(
        //                           text: "rehmankh2256@gmail.com",
        //                           color: AppColor.whiteColor,
        //                           fontsize: 9,
        //                           fontWeight: FontWeight.w600,
        //                         )
        //                       ],
        //                     ),
        //                   ),
        //                   const SizedBox(height: 12),
        //                   SmallContainerWidget(
        //                     child: Column(
        //                       mainAxisAlignment: MainAxisAlignment.center,
        //                       crossAxisAlignment: CrossAxisAlignment.center,
        //                       children: [
        //                         Icon(
        //                           Icons.check_outlined,
        //                           color: AppColor.redColor,
        //                           size: 20,
        //                         ),
        //                         const SizedBox(height: 8),
        //                         TextWidget(
        //                           text: "Freelance Available",
        //                           color: AppColor.whiteColor,
        //                           fontsize: 9,
        //                           fontWeight: FontWeight.w600,
        //                         )
        //                       ],
        //                     ),
        //                   ),
        //                 ],
        //               ),
        //               const SizedBox(width: 30),
        //               Container(
        //                 height: 430,
        //                 width: 600,
        //                 decoration: BoxDecoration(
        //                   color: AppColor.lightGreyColor,
        //                   borderRadius: BorderRadius.circular(8),
        //                 ),
        //                 child: Padding(
        //                   padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 10),
        //                   child: Column(
        //                     mainAxisAlignment: MainAxisAlignment.center,
        //                     children: [
        //                       Row(
        //                         children: [
        //                           Expanded(
        //                             child: Container(
        //                               height: 45,
        //                               decoration: BoxDecoration(
        //                                 color: AppColor.greyColor,
        //                                 borderRadius: BorderRadius.circular(6),
        //                               ),
        //                               child: Padding(
        //                                 padding: const EdgeInsets.symmetric(horizontal: 12),
        //                                 child: TextFormField(
        //                                   style: TextStyle(
        //                                     color: AppColor.whiteColor,
        //                                     fontSize: 13,
        //                                     fontWeight: FontWeight.w500,
        //                                   ),
        //                                   decoration: InputDecoration(
        //                                     border: InputBorder.none,
        //                                     hintText: "Enter Your Name",
        //                                     hintStyle: TextStyle(
        //                                       color: AppColor.whiteColor.withOpacity(0.7),
        //                                       fontSize: 13,
        //                                       fontWeight: FontWeight.w500,
        //                                     ),
        //                                   ),
        //                                 ),
        //                               ),
        //                             ),
        //                           ),
        //                           const SizedBox(width: 12),
        //                           Expanded(
        //                             child: Container(
        //                               height: 45,
        //                               decoration: BoxDecoration(
        //                                 color: AppColor.greyColor,
        //                                 borderRadius: BorderRadius.circular(6),
        //                               ),
        //                               child: Padding(
        //                                 padding: const EdgeInsets.symmetric(horizontal: 12),
        //                                 child: TextFormField(
        //                                   style: TextStyle(
        //                                     color: AppColor.whiteColor,
        //                                     fontSize: 13,
        //                                     fontWeight: FontWeight.w500,
        //                                   ),
        //                                   decoration: InputDecoration(
        //                                     border: InputBorder.none,
        //                                     hintText: "Enter Your Phone",
        //                                     hintStyle: TextStyle(
        //                                       color: AppColor.whiteColor.withOpacity(0.7),
        //                                       fontSize: 13,
        //                                       fontWeight: FontWeight.w500,
        //                                     ),
        //                                   ),
        //                                 ),
        //                               ),
        //                             ),
        //                           ),
        //                         ],
        //                       ),
        //                       const SizedBox(height: 12),
        //                       Row(
        //                         children: [
        //                           Expanded(
        //                             child: Container(
        //                               height: 45,
        //                               decoration: BoxDecoration(
        //                                 color: AppColor.greyColor,
        //                                 borderRadius: BorderRadius.circular(6),
        //                               ),
        //                               child: Padding(
        //                                 padding: const EdgeInsets.symmetric(horizontal: 12),
        //                                 child: TextFormField(
        //                                   style: TextStyle(
        //                                     color: AppColor.whiteColor,
        //                                     fontSize: 13,
        //                                     fontWeight: FontWeight.w500,
        //                                   ),
        //                                   decoration: InputDecoration(
        //                                     border: InputBorder.none,
        //                                     hintText: "Enter Your Email",
        //                                     hintStyle: TextStyle(
        //                                       color: AppColor.whiteColor.withOpacity(0.7),
        //                                       fontSize: 13,
        //                                       fontWeight: FontWeight.w500,
        //                                     ),
        //                                   ),
        //                                 ),
        //                               ),
        //                             ),
        //                           ),
        //                           const SizedBox(width: 12),
        //                           Expanded(
        //                             child: Container(
        //                               height: 45,
        //                               decoration: BoxDecoration(
        //                                 color: AppColor.greyColor,
        //                                 borderRadius: BorderRadius.circular(6),
        //                               ),
        //                               child: Padding(
        //                                 padding: const EdgeInsets.symmetric(horizontal: 12),
        //                                 child: TextFormField(
        //                                   style: TextStyle(
        //                                     color: AppColor.whiteColor,
        //                                     fontSize: 13,
        //                                     fontWeight: FontWeight.w500,
        //                                   ),
        //                                   decoration: InputDecoration(
        //                                     border: InputBorder.none,
        //                                     hintText: "Enter Your Subject",
        //                                     hintStyle: TextStyle(
        //                                       color: AppColor.whiteColor.withOpacity(0.7),
        //                                       fontSize: 13,
        //                                       fontWeight: FontWeight.w500,
        //                                     ),
        //                                   ),
        //                                 ),
        //                               ),
        //                             ),
        //                           ),
        //                         ],
        //                       ),
        //                       const SizedBox(height: 12),
        //                       Container(
        //                         height: 180,
        //                         decoration: BoxDecoration(
        //                           color: AppColor.greyColor,
        //                           borderRadius: BorderRadius.circular(6),
        //                         ),
        //                         child: Padding(
        //                           padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        //                           child: TextFormField(
        //                             maxLines: null,
        //                             expands: true,
        //                             style: TextStyle(
        //                               color: AppColor.whiteColor,
        //                               fontSize: 13,
        //                               fontWeight: FontWeight.w500,
        //                             ),
        //                             decoration: InputDecoration(
        //                               border: InputBorder.none,
        //                               hintText: "Type Your Message",
        //                               hintStyle: TextStyle(
        //                                 color: AppColor.whiteColor.withOpacity(0.7),
        //                                 fontSize: 13,
        //                                 fontWeight: FontWeight.w500,
        //                               ),
        //                             ),
        //                           ),
        //                         ),
        //                       ),
        //                       const SizedBox(height: 20),
        //                       Container(
        //                         height: 40,
        //                         width: 250,
        //                         decoration: BoxDecoration(
        //                           color: AppColor.greyColor,
        //                           borderRadius: BorderRadius.circular(6),
        //                         ),
        //                         child: const Center(
        //                           child: Row(
        //                             mainAxisAlignment: MainAxisAlignment.center,
        //                             children: [
        //                               Text(
        //                                 "Send Message",
        //                                 style: TextStyle(
        //                                   color: Colors.white,
        //                                   fontSize: 13,
        //                                   fontWeight: FontWeight.w600,
        //                                 ),
        //                               ),
        //                               SizedBox(width: 8),
        //                               Icon(
        //                                 Icons.send,
        //                                 color: Colors.white,
        //                                 size: 16,
        //                               ),
        //                             ],
        //                           ),
        //                         ),
        //                       ),
        //                     ],
        //                   ),
        //                 ),
        //               ),
        //             ],
        //           ),
        //           const SizedBox(height: 30),
        //         ],
        //       ),
        //     ),
        //   ),
        // ),
        mobile: Container(),
        tablet: Container(
          height: MediaQuery.of(context).size.height * 0.95,
          width: MediaQuery.of(context).size.width * 1,
          color: AppColor.greyColor,
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
                          color: AppColor.lightGreyColor,
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
                                        color: AppColor.greyColor,
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
                                        color: AppColor.greyColor,
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
                                        color: AppColor.greyColor,
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
                                        color: AppColor.greyColor,
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
                                  color: AppColor.greyColor,
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
                                  color: AppColor.greyColor,
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
        desktop: Container(
          height: MediaQuery.of(context).size.height * 0.95,
          width: MediaQuery.of(context).size.width * 1,
          color: AppColor.greyColor,
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
                          color: AppColor.lightGreyColor,
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
                                        color: AppColor.greyColor,
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
                                        color: AppColor.greyColor,
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
                                        color: AppColor.greyColor,
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
                                        color: AppColor.greyColor,
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
                                  color: AppColor.greyColor,
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
                                  color: AppColor.greyColor,
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
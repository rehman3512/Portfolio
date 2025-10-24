import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/Constants/AppColor/appColor.dart';
import 'package:portfolio/Widgets/ResponseWidget/ResponseWidget.dart';
import 'package:portfolio/Widgets/ResumeContainer/resumecontainer.dart';
import 'package:portfolio/Widgets/TimelineWidget/timelinewidget.dart';
import 'package:portfolio/Widgets/textWidget/textWidget.dart';

class ResumePage extends StatelessWidget {
  const ResumePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponseWidget(
          mobile: Container(
              height: MediaQuery.of(context).size.height * 0.95,
              width: MediaQuery.of(context).size.width * 1,
              color: AppColor.greyColor,
              child: SafeArea(
                  child: SingleChildScrollView(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            TextWidget(
                                text: "YEARS OF EXPERIENCE",
                                color: AppColor.redColor,
                                fontsize: 10,
                                fontWeight: FontWeight.w400),
                            TextWidget(
                                text: "My Resume",
                                color: AppColor.whiteColor,
                                fontsize: 32,
                                fontWeight: FontWeight.w400),
                            SizedBox(height: 15,),
                            Padding(padding: EdgeInsets.symmetric(horizontal: 10),
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        TextWidget(
                                            text: "Job Experience",
                                            color: AppColor.whiteColor,
                                            fontsize: 20,
                                            fontWeight: FontWeight.w400),
                                        TextWidget(
                                            text: "2024-2025",
                                            color: AppColor.redColor,
                                            fontsize: 12,
                                            fontWeight: FontWeight.w400),
                                        SizedBox(
                                          height: 40,
                                        ),
                                        SizedBox(
                                          width: MediaQuery.of(context).size.width * 0.4,
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                left: 5,
                                                top: 0,
                                                bottom: 0,
                                                child: Container(
                                                  width: 2,
                                                  color: AppColor.blackColor,
                                                ),
                                              ),
                                              Column(children: [
                                                ListView.separated(
                                                    shrinkWrap: true,
                                                    physics: NeverScrollableScrollPhysics(),
                                                    itemCount:4 ,
                                                    separatorBuilder: (context, index) => SizedBox(height: 15),
                                                    itemBuilder: (context,index){
                                                      return TimelineWidget(
                                                          child: ResumeContainer(
                                                              child: Padding(
                                                                padding: const EdgeInsets.symmetric(
                                                                    horizontal: 8, vertical: 10),
                                                                child: Column(
                                                                  crossAxisAlignment:
                                                                  CrossAxisAlignment.start,
                                                                  children: [
                                                                    TextWidget(
                                                                        text: "Flutter Development",
                                                                        color: AppColor.whiteColor,
                                                                        fontsize: 14,
                                                                        fontWeight:
                                                                        FontWeight.w400),
                                                                    TextWidget(
                                                                        text:
                                                                        "Bismillah IT Collage(2024-2025)",
                                                                        color: AppColor.whiteColor,
                                                                        fontsize: 10,
                                                                        fontWeight:
                                                                        FontWeight.w200),
                                                                    SizedBox(
                                                                      height: 6,
                                                                    ),
                                                                    // SizedBox(height: 4),
                                                                    TextWidget(
                                                                      text:
                                                                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
                                                                          "Odit maxime laborum sequi, magni earum quo soluta sint velit numquam.",
                                                                      color: AppColor.whiteColor,
                                                                      fontsize: 8,
                                                                      fontWeight: FontWeight.w200,
                                                                    ),
                                                                  ],
                                                                ),
                                                              )));
                                                    })
                                              ],)

                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width * 0.04,
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        TextWidget(
                                            text: "Education Quality",
                                            color: AppColor.whiteColor,
                                            fontsize: 20,
                                            fontWeight: FontWeight.w400),
                                        TextWidget(
                                            text: "2024-2028",
                                            color: AppColor.redColor,
                                            fontsize: 12,
                                            fontWeight: FontWeight.w400),
                                        SizedBox(
                                          height: 40,
                                        ),
                                        SizedBox(
                                          width: MediaQuery.of(context).size.width * 0.4,
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                left: 5,
                                                top: 0,
                                                bottom: 0,
                                                child: Container(
                                                  width: 2,
                                                  color: AppColor.blackColor,
                                                ),
                                              ),
                                              ListView.builder(
                                                  itemCount: 4,
                                                  shrinkWrap: true,
                                                  physics: NeverScrollableScrollPhysics(),
                                                  itemBuilder: (context,index){
                                                    return Column(children: [
                                                      TimelineWidget(
                                                          child: ResumeContainer(
                                                              child: Padding(
                                                                padding: const EdgeInsets.symmetric(
                                                                    horizontal: 8, vertical: 10),
                                                                child: Column(
                                                                  crossAxisAlignment:
                                                                  CrossAxisAlignment.start,
                                                                  children: [
                                                                    TextWidget(
                                                                        text: "Flutter Development",
                                                                        color: AppColor.whiteColor,
                                                                        fontsize: 14,
                                                                        fontWeight:
                                                                        FontWeight.w400),
                                                                    TextWidget(
                                                                        text:
                                                                        "Bismillah IT Collage(2024-2025)",
                                                                        color: AppColor.whiteColor,
                                                                        fontsize: 10,
                                                                        fontWeight:
                                                                        FontWeight.w200),
                                                                    SizedBox(
                                                                      height: 6,
                                                                    ),
                                                                    // SizedBox(height: 4),
                                                                    TextWidget(
                                                                      text:
                                                                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
                                                                          "Odit maxime laborum sequi, magni earum quo soluta sint velit numquam.",
                                                                      color: AppColor.whiteColor,
                                                                      fontsize: 8,
                                                                      fontWeight: FontWeight.w200,
                                                                    ),
                                                                  ],
                                                                ),
                                                              ))),
                                                      SizedBox(height: 15,),
                                                    ],);
                                                  })

                                            ],
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                  )
              )
          ),
          tablet: Container(
              height: MediaQuery.of(context).size.height * 0.95,
              width: MediaQuery.of(context).size.width * 1,
              color: AppColor.greyColor,
              child: SafeArea(
                  child: SingleChildScrollView(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            TextWidget(
                                text: "YEARS OF EXPERIENCE",
                                color: AppColor.redColor,
                                fontsize: 10,
                                fontWeight: FontWeight.w400),
                            TextWidget(
                                text: "My Resume",
                                color: AppColor.whiteColor,
                                fontsize: 32,
                                fontWeight: FontWeight.w400),
                            SizedBox(height: 15,),
                            Padding(padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      TextWidget(
                                          text: "Job Experience",
                                          color: AppColor.whiteColor,
                                          fontsize: 28,
                                          fontWeight: FontWeight.w400),
                                      TextWidget(
                                          text: "2024-2025",
                                          color: AppColor.redColor,
                                          fontsize: 16,
                                          fontWeight: FontWeight.w400),
                                      SizedBox(
                                        height: 40,
                                      ),
                                      SizedBox(
                                        width: MediaQuery.of(context).size.width * 0.4,
                                        child: Stack(
                                          children: [
                                            Positioned(
                                              left: 5,
                                              top: 0,
                                              bottom: 0,
                                              child: Container(
                                                width: 2,
                                                color: AppColor.blackColor,
                                              ),
                                            ),
                                            Column(children: [
                                              ListView.separated(
                                                shrinkWrap: true,
                                                  physics: NeverScrollableScrollPhysics(),
                                                  itemCount:4 ,
                                                  separatorBuilder: (context, index) => SizedBox(height: 15),
                                                  itemBuilder: (context,index){
                                                return TimelineWidget(
                                                    child: ResumeContainer(
                                                        child: Padding(
                                                          padding: const EdgeInsets.symmetric(
                                                              horizontal: 8, vertical: 10),
                                                          child: Column(
                                                            crossAxisAlignment:
                                                            CrossAxisAlignment.start,
                                                            children: [
                                                              TextWidget(
                                                                  text: "Flutter Development",
                                                                  color: AppColor.whiteColor,
                                                                  fontsize: 16,
                                                                  fontWeight:
                                                                  FontWeight.w400),
                                                              TextWidget(
                                                                  text:
                                                                  "Bismillah IT Collage(2024-2025)",
                                                                  color: AppColor.whiteColor,
                                                                  fontsize: 12,
                                                                  fontWeight:
                                                                  FontWeight.w200),
                                                              SizedBox(
                                                                height: 6,
                                                              ),
                                                              // SizedBox(height: 4),
                                                              TextWidget(
                                                                text:
                                                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
                                                                    "Odit maxime laborum sequi, magni earum quo soluta sint velit numquam.",
                                                                color: AppColor.whiteColor,
                                                                fontsize: 10,
                                                                fontWeight: FontWeight.w200,
                                                              ),
                                                            ],
                                                          ),
                                                        )));
                                              })
                                            ],)

                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width * 0.04,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      TextWidget(
                                          text: "Education Quality",
                                          color: AppColor.whiteColor,
                                          fontsize: 28,
                                          fontWeight: FontWeight.w400),
                                      TextWidget(
                                          text: "2024-2028",
                                          color: AppColor.redColor,
                                          fontsize: 16,
                                          fontWeight: FontWeight.w400),
                                      SizedBox(
                                        height: 40,
                                      ),
                                      SizedBox(
                                        width: MediaQuery.of(context).size.width * 0.4,
                                        child: Stack(
                                          children: [
                                            Positioned(
                                              left: 5,
                                              top: 0,
                                              bottom: 0,
                                              child: Container(
                                                width: 2,
                                                color: AppColor.blackColor,
                                              ),
                                            ),
                                            ListView.builder(
                                                itemCount: 4,
                                                shrinkWrap: true,
                                                physics: NeverScrollableScrollPhysics(),
                                                itemBuilder: (context,index){
                                                  return Column(children: [
                                                TimelineWidget(
                                                    child: ResumeContainer(
                                                        child: Padding(
                                                          padding: const EdgeInsets.symmetric(
                                                              horizontal: 8, vertical: 10),
                                                          child: Column(
                                                            crossAxisAlignment:
                                                            CrossAxisAlignment.start,
                                                            children: [
                                                              TextWidget(
                                                                  text: "Flutter Development",
                                                                  color: AppColor.whiteColor,
                                                                  fontsize: 16,
                                                                  fontWeight:
                                                                  FontWeight.w400),
                                                              TextWidget(
                                                                  text:
                                                                  "Bismillah IT Collage(2024-2025)",
                                                                  color: AppColor.whiteColor,
                                                                  fontsize: 12,
                                                                  fontWeight:
                                                                  FontWeight.w200),
                                                              SizedBox(
                                                                height: 6,
                                                              ),
                                                              // SizedBox(height: 4),
                                                              TextWidget(
                                                                text:
                                                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
                                                                    "Odit maxime laborum sequi, magni earum quo soluta sint velit numquam.",
                                                                color: AppColor.whiteColor,
                                                                fontsize: 10,
                                                                fontWeight: FontWeight.w200,
                                                              ),
                                                            ],
                                                          ),
                                                        ))),
                                                SizedBox(height: 15,),
                                              ],);
                                            })

                                          ],
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                  )
              )
          ),
          desktop: Container(
            height: MediaQuery.of(context).size.height * 0.95,
            width: MediaQuery.of(context).size.width * 1,
            color: AppColor.greyColor,
            child: SafeArea(
              child: SingleChildScrollView(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextWidget(
                          text: "YEARS OF EXPERIENCE",
                          color: AppColor.redColor,
                          fontsize: 12,
                          fontWeight: FontWeight.w400),
                      TextWidget(
                          text: "My Resume",
                          color: AppColor.whiteColor,
                          fontsize: 48,
                          fontWeight: FontWeight.w400),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 60),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextWidget(
                                    text: "Job Experience",
                                    color: AppColor.whiteColor,
                                    fontsize: 32,
                                    fontWeight: FontWeight.w400),
                                TextWidget(
                                    text: "2024-2025",
                                    color: AppColor.redColor,
                                    fontsize: 12,
                                    fontWeight: FontWeight.w400),
                                SizedBox(
                                  height: 40,
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 5,
                                        top: 0,
                                        bottom: 0,
                                        child: Container(
                                          width: 2,
                                          color: AppColor.blackColor,
                                        ),
                                      ),
                                      Column(
                                        children: [
                                          TimelineWidget(
                                              child: ResumeContainer(
                                                  child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 20, vertical: 30),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                TextWidget(
                                                    text: "Flutter Development",
                                                    color: AppColor.whiteColor,
                                                    fontsize: 18,
                                                    fontWeight:
                                                        FontWeight.w400),
                                                TextWidget(
                                                    text:
                                                        "Bismillah IT Collage(2024-2025)",
                                                    color: AppColor.whiteColor,
                                                    fontsize: 12,
                                                    fontWeight:
                                                        FontWeight.w200),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                SizedBox(height: 10),
                                                TextWidget(
                                                  text:
                                                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
                                                      "Odit maxime laborum sequi, magni earum quo soluta sint velit numquam.",
                                                  color: AppColor.whiteColor,
                                                  fontsize: 12,
                                                  fontWeight: FontWeight.w200,
                                                ),
                                              ],
                                            ),
                                          ))),
                                          SizedBox(
                                            height: 30,
                                          ),
                                          TimelineWidget(
                                              child: ResumeContainer(
                                                  child: Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 20, vertical: 30),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                TextWidget(
                                                    text: "Flutter Development",
                                                    color: AppColor.whiteColor,
                                                    fontsize: 18,
                                                    fontWeight:
                                                        FontWeight.w400),
                                                TextWidget(
                                                    text:
                                                        "Bismillah IT College(2025-2025)",
                                                    color: AppColor.whiteColor,
                                                    fontsize: 12,
                                                    fontWeight:
                                                        FontWeight.w200),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                SizedBox(height: 10),
                                                TextWidget(
                                                  text:
                                                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
                                                      "Odit maxime laborum sequi, magni earum quo soluta sint velit numquam.",
                                                  color: AppColor.whiteColor,
                                                  fontsize: 12,
                                                  fontWeight: FontWeight.w200,
                                                ),
                                              ],
                                            ),
                                          )),
                                          ),
                                          SizedBox(height: 30,),
                                          TimelineWidget(child: ResumeContainer(
                                              child: Padding(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 20, vertical: 30),
                                                child: Column(
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                                  children: [
                                                    TextWidget(
                                                        text: "Flutter Development",
                                                        color: AppColor.whiteColor,
                                                        fontsize: 18,
                                                        fontWeight:
                                                        FontWeight.w400),
                                                    TextWidget(
                                                        text:
                                                        "Bismillah IT College(2025-2025)",
                                                        color: AppColor.whiteColor,
                                                        fontsize: 12,
                                                        fontWeight:
                                                        FontWeight.w200),
                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    SizedBox(height: 10),
                                                    TextWidget(
                                                      text:
                                                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
                                                          "Odit maxime laborum sequi, magni earum quo soluta sint velit numquam.",
                                                      color: AppColor.whiteColor,
                                                      fontsize: 12,
                                                      fontWeight: FontWeight.w200,
                                                    ),
                                                  ],
                                                ),
                                              ))),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.02,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextWidget(
                                    text: "Education Quality",
                                    color: AppColor.whiteColor,
                                    fontsize: 32,
                                    fontWeight: FontWeight.w400),
                                TextWidget(
                                    text: "2024-2028",
                                    color: AppColor.redColor,
                                    fontsize: 12,
                                    fontWeight: FontWeight.w400),
                                SizedBox(
                                  height: 40,
                                ),
                                SizedBox(width: MediaQuery.of(context).size.width * 0.4,
                                child: Stack(
                                  children: [
                                    Positioned(left: 5,
                                        top: 0,
                                        bottom: 0,
                                        child: Container(width: 2,
                                        color: AppColor.blackColor,),
                                    ),
                                    Column(children: [
                                      TimelineWidget(child: ResumeContainer(
                                          child: Padding(
                                            padding: EdgeInsets.symmetric(
                                              horizontal: 20,
                                              vertical: 30,
                                            ),
                                            child: Column(
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              children: [
                                                TextWidget(
                                                    text: "Bachelor of Computer Science",
                                                    color: AppColor.whiteColor,
                                                    fontsize: 18,
                                                    fontWeight: FontWeight.w400),
                                                TextWidget(
                                                    text:
                                                    "University of Agriculture(2024-2028)",
                                                    color: AppColor.whiteColor,
                                                    fontsize: 12,
                                                    fontWeight: FontWeight.w200),
                                                SizedBox(height: 10,),
                                                TextWidget(
                                                  text:
                                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
                                                      "Odit maxime laborum sequi, magni earum quo soluta sint velit numquam.",
                                                  color: AppColor.whiteColor,
                                                  fontsize: 12,
                                                  fontWeight: FontWeight.w200,
                                                ),
                                              ],
                                            ),
                                          ))),
                                      SizedBox(height: 30,),
                                      TimelineWidget(child: ResumeContainer(
                                          child: Padding(
                                            padding: EdgeInsets.symmetric(
                                              horizontal: 20,
                                              vertical: 30,
                                            ),
                                            child: Column(
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              children: [
                                                TextWidget(
                                                    text: "Bachelor of Computer Science",
                                                    color: AppColor.whiteColor,
                                                    fontsize: 18,
                                                    fontWeight: FontWeight.w400),
                                                TextWidget(
                                                    text:
                                                    "University of Agriculture(2024-2028)",
                                                    color: AppColor.whiteColor,
                                                    fontsize: 12,
                                                    fontWeight: FontWeight.w200),
                                                SizedBox(height: 10,),
                                                TextWidget(
                                                  text:
                                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
                                                      "Odit maxime laborum sequi, magni earum quo soluta sint velit numquam.",
                                                  color: AppColor.whiteColor,
                                                  fontsize: 12,
                                                  fontWeight: FontWeight.w200,
                                                ),
                                                SizedBox(height: 30,),
                                              ],
                                            ),
                                          ))),
                                      SizedBox(height: 30,),
                                      TimelineWidget(child: ResumeContainer(
                                          child: Padding(
                                            padding: EdgeInsets.symmetric(
                                              horizontal: 20,
                                              vertical: 30,
                                            ),
                                            child: Column(
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              children: [
                                                TextWidget(
                                                    text: "Bachelor of Computer Science",
                                                    color: AppColor.whiteColor,
                                                    fontsize: 18,
                                                    fontWeight: FontWeight.w400),
                                                TextWidget(
                                                    text:
                                                    "University of Agriculture(2024-2028)",
                                                    color: AppColor.whiteColor,
                                                    fontsize: 12,
                                                    fontWeight: FontWeight.w200),
                                                SizedBox(height: 10,),
                                                TextWidget(
                                                  text:
                                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
                                                      "Odit maxime laborum sequi, magni earum quo soluta sint velit numquam.",
                                                  color: AppColor.whiteColor,
                                                  fontsize: 12,
                                                  fontWeight: FontWeight.w200,
                                                ),
                                                SizedBox(height: 30,),
                                              ],
                                            ),
                                          )))
                                    ],)
                                  ],
                                ),),

                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
      ),
    );
  }
}

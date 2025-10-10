import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/Constants/AppColor/appColor.dart';
import 'package:portfolio/Models/ServiceModel/serviceModel.dart';
import 'package:portfolio/Widgets/ResponseWidget/ResponseWidget.dart';
import 'package:portfolio/Widgets/containerWidget/containerWidget.dart';
import 'package:portfolio/Widgets/textWidget/textWidget.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  
  List<ServiceModel> ServiceModelList = [
    ServiceModel(
        icon: FontAwesomeIcons.mobileScreen,
        title: "App Development", 
        description: "Designing and developing high-quality, cross-platform mobile apps for Android and iOS using Flutter — ensuring smooth UI, performance, and scalability"),
    ServiceModel(
        icon: FontAwesomeIcons.globe,
        title: "Web Development",
        description: "Creating responsive and fast Flutter web apps with state management, routing, Firebase, and hosting integration for seamless browser experiences."),
    ServiceModel(
        icon: FontAwesomeIcons.fire,
        title: "Firebase Integration", 
        description: "Implementing Firebase Authentication, Cloud FireStore, Realtime Database, Cloud Functions, and Push Notifications for modern backend support."),
    ServiceModel(
        icon: FontAwesomeIcons.link,
        title: "REST API integration",
        description: "Connecting apps with secure and efficient REST APIs to fetch and manage dynamic data in real time."),
    ServiceModel(
        icon: FontAwesomeIcons.diagramProject,
        title: "State Management Solutions",
        description: "Using GetX, Provider, RiverPod, or Bloc for clean and maintainable app architecture and smooth app behavior."),
    ServiceModel(
        icon: FontAwesomeIcons.palette,
        title: "UI/UX Design Implementation",
        description: "Converting Figma or Adobe XD designs into pixel-perfect Flutter interfaces with responsive layouts and animations."),
    ServiceModel(
        icon: FontAwesomeIcons.route,
        title: "Routing & Navigation Architecture",
        description: "Implementing clean and organized navigation systems (GetX routes, named routes, or GoRouter) for scalable app flow."),
    ServiceModel(
        icon: FontAwesomeIcons.cloudArrowUp,
        title: "App Deployment",
        description: "Building and publishing Flutter apps to Google Play Store, Apple App Store, and web hosting platforms like Firebase Hosting or Vercel."),
    ServiceModel(
        icon: FontAwesomeIcons.gaugeHigh,
        title: "Performance Optimization",
        description: "Ensuring fast load times, smooth animations, and optimized memory usage across devices and screen sizes."),
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ResponseWidget(
          mobile: Container(
            height: MediaQuery.of(context).size.height * 0.95,
            width: MediaQuery.of(context).size.width,
            color: AppColor.greyColor,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextWidget(
                    text: "MY SERVICES",
                    color: AppColor.redColor,
                    fontsize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                  TextWidget(
                    text: "WHAT CAN I DO",
                    color: AppColor.whiteColor,
                    fontsize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                  const SizedBox(height: 20),
                  Expanded(
                    child: GridView.builder(
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        childAspectRatio: 0.8,
                      ),
                      itemCount: ServiceModelList.length,
                      itemBuilder: (context, index) {
                        final service = ServiceModelList[index];
                        return ContainerWidget(
                          height: MediaQuery.of(context).size.height * 0.28,
                          width: MediaQuery.of(context).size.width * 0.4,
                          icon: service.icon,
                          title: service.title,
                          description: service.description,
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          tablet: Container(
            height: MediaQuery.of(context).size.height * 0.95,
            width: MediaQuery.of(context).size.width * 1,
            color: AppColor.greyColor,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 20),
              child: Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextWidget(
                          text: "MY SERVICES",
                          color: AppColor.redColor,
                          fontsize: 12,
                          fontWeight: FontWeight.w600),
                      TextWidget(
                          text: "WHAT CAN I DO",
                          color: AppColor.whiteColor,
                          fontsize: 28,
                          fontWeight: FontWeight.w600),
                      SizedBox(
                        height: 40,
                      ),
                      Expanded(
                        child: GridView.builder(
                            gridDelegate:
                            SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 15,
                              mainAxisSpacing: 15,
                              childAspectRatio: 1.6,
                            ),
                            itemCount: ServiceModelList.length,
                            itemBuilder: (context,index){
                              final service = ServiceModelList[index];
                              return ContainerWidget(
                                height: MediaQuery.of(context).size.height * 0.35,
                                width: MediaQuery.of(context).size.width * 0.25,
                                icon: service.icon,
                                title: service.title,
                                description: service.description,
                              );
                            }),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          desktop: Container(
            height: MediaQuery.of(context).size.height * 0.95,
            width: MediaQuery.of(context).size.width * 1,
            color: AppColor.greyColor,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 20),
              child: Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextWidget(
                          text: "MY SERVICES",
                          color: AppColor.redColor,
                          fontsize: 12,
                          fontWeight: FontWeight.w600),
                      TextWidget(
                          text: "WHAT CAN I DO",
                          color: AppColor.whiteColor,
                          fontsize: 28,
                          fontWeight: FontWeight.w600),
                      SizedBox(
                        height: 40,
                      ),
                      Expanded(
                        child: GridView.builder(
                            gridDelegate:
                            SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 10,
                              childAspectRatio: 1.6,
                            ),
                            itemCount: ServiceModelList.length,
                            itemBuilder: (context,index){
                              final service = ServiceModelList[index];
                              return ContainerWidget(
                                height: MediaQuery.of(context).size.height * 0.35,
                                width: MediaQuery.of(context).size.width * 0.25,
                                icon: service.icon,
                                title: service.title,
                                description: service.description,
                              );
                            }),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}

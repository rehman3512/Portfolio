import 'package:flutter/material.dart';
import 'package:portfolio/Controller/Widgets/AppColor/appColor.dart';

class MainPage1 extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;
  const MainPage1({super.key,required this.mobile,required this.tablet,
    required this.desktop});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context,constraints){
      if(constraints.maxWidth<500)
        {
          return mobile;
        }
      else if(constraints.maxWidth<1100)
        {
          return tablet;
        }
      else
        {
          return desktop;
        }
    });
  }
}


class ScreenView extends StatefulWidget {
  const ScreenView({super.key});

  @override
  State<ScreenView> createState() => _ScreenViewState();
}

class _ScreenViewState extends State<ScreenView> {
  @override
  Widget build(BuildContext context) {
    return MainPage1(
        mobile: Container(
          height: double.infinity,
          width: double.infinity,
          color: AppColor.greyColor,
        ),
        tablet: Container(
          height: double.infinity,
          width: double.infinity,
          color: AppColor.redColor,
        ),
        desktop: Container(
          height: double.infinity,
          width: double.infinity,
          color: AppColor.blackColor,
        )
    );
  }
}

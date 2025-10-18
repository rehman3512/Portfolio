import 'package:flutter/material.dart';
import 'package:portfolio/Constants/AppColor/appColor.dart';

class ResumeContainer extends StatelessWidget {
  final Widget? child;
  const ResumeContainer({super.key,required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.15,
      width: MediaQuery.of(context).size.width * 0.50,
      decoration: BoxDecoration(
        color: AppColor.lightGreyColor,
        border: Border.all(
          color: AppColor.lightGreyColor
        ),
        borderRadius: BorderRadius.circular(10),
      ),child: child,
    );
  }
}

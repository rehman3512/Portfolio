import 'package:flutter/material.dart';
import 'package:portfolio/Constants/AppColor/appColor.dart';

class SmallContainerWidget extends StatelessWidget {
  final Widget? child;
  const SmallContainerWidget({super.key,required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height*0.17,
        width: MediaQuery.of(context).size.width*0.2,
      decoration: BoxDecoration(
          color: AppColor.lightGreyColor,
          border: Border.all(color: AppColor.lightGreyColor),
          borderRadius: BorderRadius.circular(8)
      ),child: child,
    );
  }
}

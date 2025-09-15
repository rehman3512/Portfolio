import 'package:flutter/material.dart';
import 'package:portfolio/Constants/AppColor/appColor.dart';

class TimelineWidget extends StatelessWidget {
  final Widget child;
  const TimelineWidget({super.key,required this.child});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Container(height: 12,width: 12,
      decoration: BoxDecoration(
        color: AppColor.blackColor,
        shape: BoxShape.circle,
      ),),Expanded(flex: 0,
        child: Container(height: 2,width: 40,
          color: AppColor.blackColor,),
      ),
      Flexible(child: child)
    ],);
  }
}

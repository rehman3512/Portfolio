// import 'package:flutter/material.dart';
// import 'package:portfolio/Constants/AppColor/appColor.dart';
//
// class TimelineWidget extends StatelessWidget {
//   final Widget child;
//   const TimelineWidget({super.key,required this.child});
//
//   @override
//   Widget build(BuildContext context) {
//     return Row(children: [
//       Container(height: 12,width: 12,
//       decoration: BoxDecoration(
//         color: AppColor.blackColor,
//         shape: BoxShape.circle,
//       ),),Expanded(flex: 0,
//         child: Container(height: 2,width: 40,
//           color: AppColor.blackColor,),
//       ),
//       Flexible(child: child)
//     ],);
//   }
// }

import 'package:flutter/material.dart';
import 'package:portfolio/Constants/AppColor/appColor.dart';
import 'package:portfolio/Widgets/ResponseWidget/ResponseWidget.dart';

class TimelineWidget extends StatelessWidget {
  final Widget child;
  const TimelineWidget({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return ResponseWidget(
      mobile: _buildTimeline(dotSize: 8, lineWidth: 20),
      tablet: _buildTimeline(dotSize: 10, lineWidth: 30),
      desktop: _buildTimeline(dotSize: 12, lineWidth: 40),
    );
  }

  Widget _buildTimeline({required double dotSize, required double lineWidth}) {
    return Row(
      children: [
        // Dot
        Container(
          height: dotSize,
          width: dotSize,
          decoration: BoxDecoration(
            color: AppColor.blackColor,
            shape: BoxShape.circle,
          ),
        ),

        // Small connecting line
        Expanded(
          flex: 0,
          child: Container(
            height: 2,
            width: lineWidth,
            color: AppColor.blackColor,
          ),
        ),

        // Child content
        Flexible(child: child),
      ],
    );
  }
}

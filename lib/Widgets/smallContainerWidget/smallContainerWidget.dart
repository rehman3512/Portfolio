// import 'package:flutter/material.dart';
// import 'package:portfolio/Constants/AppColor/appColor.dart';
//
// class SmallContainerWidget extends StatelessWidget {
//   final Widget? child;
//   const SmallContainerWidget({super.key,required this.child});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         height: MediaQuery.of(context).size.height*0.17,
//         width: MediaQuery.of(context).size.width*0.2,
//       decoration: BoxDecoration(
//           color: AppColor.lightGreyColor,
//           border: Border.all(color: AppColor.lightGreyColor),
//           borderRadius: BorderRadius.circular(8)
//       ),child: child,
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:portfolio/Constants/AppColor/appColor.dart';
import 'package:portfolio/Widgets/ResponseWidget/ResponseWidget.dart';

class SmallContainerWidget extends StatelessWidget {
  final Widget? child;
  const SmallContainerWidget({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return ResponseWidget(
      // 📱 Mobile layout
      mobile: Container(
        height: MediaQuery.of(context).size.height * 0.25, // taller for mobile
        width: MediaQuery.of(context).size.width * 0.9,    // almost full width
        decoration: BoxDecoration(
          color: AppColor.lightGreyColor,
          border: Border.all(color: AppColor.lightGreyColor),
          borderRadius: BorderRadius.circular(8),
        ),
        child: child,
      ),

      // 💻 Tablet layout (smaller height, same web design style)
      tablet: Container(
        height: 140, // smaller height
        width: 300,   // balanced width
        decoration: BoxDecoration(
          color: AppColor.lightGreyColor,
          border: Border.all(color: AppColor.lightGreyColor),
          borderRadius: BorderRadius.circular(8),
        ),
        child: child,
      ),

      // 🖥 Desktop/Web layout (unchanged ✅)
      desktop: Container(
        height: 200, // same as original web
        width: 400,
        decoration: BoxDecoration(
          color: AppColor.lightGreyColor,
          border: Border.all(color: AppColor.lightGreyColor),
          borderRadius: BorderRadius.circular(8),
        ),
        child: child,
      ),
    );
  }
}

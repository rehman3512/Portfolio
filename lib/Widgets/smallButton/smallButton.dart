import 'package:flutter/material.dart';
import 'package:portfolio/Constants/AppColor/appColor.dart';

// class Smallbutton extends StatelessWidget {
//   final Widget? child;
//   const Smallbutton({super.key,required this.child});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         height: MediaQuery.of(context).size.height*0.07,
//         width: MediaQuery.of(context).size.width*0.04,
//         decoration: BoxDecoration(
//             color: AppColor.lightGreyColor,
//             borderRadius: BorderRadius.circular(6),
//             border: Border.all(color: AppColor.greyColor)
//         ),child: Center(
//           child: child
//         )
//     );
//   }
// }


class Smallbutton extends StatelessWidget {
  final Widget? child;
  const Smallbutton({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    // responsive width logic
    double buttonWidth;
    if (screenWidth < 600) {
      buttonWidth = 65; // mobile
    } else if (screenWidth < 1200) {
      buttonWidth = 80; // tablet
    } else {
      buttonWidth = screenWidth * 0.04; // desktop
    }

    return ConstrainedBox(
      constraints: BoxConstraints(
        minWidth: 50,
        maxWidth: buttonWidth,
      ),
      child: Container(
        height: 53,
        decoration: BoxDecoration(
          color: AppColor.lightGreyColor,
          borderRadius: BorderRadius.circular(6),
          border: Border.all(color: AppColor.greyColor),
        ),
        child: Center(child: child),
      ),
    );
  }
}

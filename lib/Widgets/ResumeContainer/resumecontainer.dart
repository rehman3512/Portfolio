// import 'package:flutter/material.dart';
// import 'package:portfolio/Constants/AppColor/appColor.dart';
//
// class ResumeContainer extends StatelessWidget {
//   final Widget? child;
//   const ResumeContainer({super.key,required this.child});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       // height: MediaQuery.of(context).size.height * 0.25,
//       // width: MediaQuery.of(context).size.width * 0.50,
//       height: 200,
//       width: 400,
//       decoration: BoxDecoration(
//         color: AppColor.lightGreyColor,
//         border: Border.all(
//           color: AppColor.lightGreyColor
//         ),
//         borderRadius: BorderRadius.circular(10),
//       ),child: child,
//     );
//   }
// }



import 'package:flutter/material.dart';
import 'package:portfolio/Constants/AppColor/appColor.dart';
import 'package:portfolio/Widgets/ResponseWidget/ResponseWidget.dart';

class ResumeContainer extends StatelessWidget {
  final Widget? child;
  const ResumeContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return ResponseWidget(
      // 📱 Mobile layout
      mobile: _buildContainer(widthFactor: 0.9),

      // 💻 Tablet layout
      tablet: _buildContainer(widthFactor: 0.7),

      // 🖥 Desktop layout (original, unchanged)
      desktop: _buildFixedContainer(),
    );
  }

  /// ✅ For mobile/tablet
  Widget _buildContainer({required double widthFactor}) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final screenWidth = constraints.maxWidth;
        return Container(
          // ✅ Height fixed safely (no MediaQuery height — no infinite errors)
          height: 200,
          width: screenWidth * widthFactor,
          decoration: BoxDecoration(
            color: AppColor.lightGreyColor,
            border: Border.all(color: AppColor.lightGreyColor),
            borderRadius: BorderRadius.circular(10),
          ),
          child: child,
        );
      },
    );
  }

  /// 🖥 Web/Desktop (no change)
  Widget _buildFixedContainer() {
    return Container(
      height: 200,
      width: 400,
      decoration: BoxDecoration(
        color: AppColor.lightGreyColor,
        border: Border.all(color: AppColor.lightGreyColor),
        borderRadius: BorderRadius.circular(10),
      ),
      child: child,
    );
  }
}

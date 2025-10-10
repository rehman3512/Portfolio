import 'package:flutter/material.dart';
import 'package:portfolio/Constants/AppColor/appColor.dart';
import 'package:portfolio/Widgets/textWidget/textWidget.dart';

class ContainerWidget extends StatelessWidget {
  final double height;
  final double width;
  final IconData icon;
  final String title;
  final String description;

  const ContainerWidget({
    super.key,
    required this.height,
    required this.width,
    required this.icon,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    double fontScale;
    double paddingScale;
    double iconScale;

    if (screenWidth < 500) {
      fontScale = 0.8;
      paddingScale = 0.7;
      iconScale = 0.8;
    } else if (screenWidth < 1100) {
      fontScale = 1.04;
      paddingScale = 1.0;
      iconScale = 1.2;
    } else {
      fontScale = 1.3;
      paddingScale = 1.3;
      iconScale = 1.4;
    }

    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: AppColor.lightGreyColor,
        border: Border.all(color: AppColor.lightGreyColor),
        borderRadius: BorderRadius.circular(8 * paddingScale),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20 * paddingScale,
          vertical: 25 * paddingScale,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              icon,
              color: AppColor.redColor,
              size: 18 * iconScale,
            ),
            SizedBox(height: 10 * paddingScale),
            TextWidget(
              text: title,
              color: AppColor.whiteColor,
              fontsize: 14 * fontScale,
              fontWeight: FontWeight.w600,
            ),
            SizedBox(height: 8 * paddingScale),
            TextWidget(
              text: description,
              color: AppColor.whiteColor,
              fontsize: 9 * fontScale,
              fontWeight: FontWeight.w400,
            ),
          ],
        ),
      ),
    );
  }
}

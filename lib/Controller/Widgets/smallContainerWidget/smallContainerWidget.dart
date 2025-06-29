import 'package:flutter/material.dart';
import 'package:portfolio/Controller/Widgets/AppColor/appColor.dart';

class SmallContainerWidget extends StatelessWidget {
  final Widget? child;
  const SmallContainerWidget({super.key,required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(height: 100,width: 200,
      decoration: BoxDecoration(
          color: AppColor.greyColor,
          border: Border.all(color: AppColor.lightGreyColor),
          borderRadius: BorderRadius.circular(8)
      ),child: child,
    );
  }
}

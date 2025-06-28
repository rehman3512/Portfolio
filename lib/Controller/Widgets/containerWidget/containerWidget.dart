import 'package:flutter/material.dart';
import 'package:portfolio/Controller/Widgets/AppColor/appColor.dart';

class ContainerWidget extends StatelessWidget {
  final Widget? child;
  const ContainerWidget({super.key,required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(height: 190,width: 270,
      decoration: BoxDecoration(
          color: AppColor.lightGreyColor,
          border: Border.all(color: AppColor.lightGreyColor),
          borderRadius: BorderRadius.circular(8)
      ),child: child,
    );
  }
}

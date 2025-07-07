import 'package:flutter/material.dart';
import 'package:portfolio/Controller/Widgets/AppColor/appColor.dart';

class ContainerWidget extends StatelessWidget {
  final Widget? child;
  const ContainerWidget({super.key,required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.33,
      width: MediaQuery.of(context).size.width*0.27,
      decoration: BoxDecoration(
          color: AppColor.lightGreyColor,
          border: Border.all(color: AppColor.lightGreyColor),
          borderRadius: BorderRadius.circular(8)
      ),child: child,
    );
  }
}

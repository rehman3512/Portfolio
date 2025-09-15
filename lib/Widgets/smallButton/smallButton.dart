import 'package:flutter/material.dart';
import 'package:portfolio/Constants/AppColor/appColor.dart';

class Smallbutton extends StatelessWidget {
  final Widget? child;
  const Smallbutton({super.key,required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height*0.07,
        width: MediaQuery.of(context).size.width*0.04,
        decoration: BoxDecoration(
            color: AppColor.greyColor,
            borderRadius: BorderRadius.circular(6),
            border: Border.all(color: AppColor.greyColor)
        ),child: Center(
          child: child
        )
    );
  }
}

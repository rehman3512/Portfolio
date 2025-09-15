import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/Constants/AppColor/appColor.dart';

class NavButton extends StatelessWidget {
  final String name;
  final int index;
  final RxInt selectedIndex;
  final VoidCallback onTap;

  const NavButton({super.key,
  required this.name,
  required this.index,
  required this.selectedIndex,
  required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Obx((){
      final isSelected = selectedIndex == index;
      return TextButton(onPressed: onTap, child: Text(name,
      style: TextStyle(
        color: isSelected ? AppColor.whiteColor : AppColor.blackColor,
        fontWeight:  isSelected ? FontWeight.bold : FontWeight.normal,
      ),));
    });
  }
}

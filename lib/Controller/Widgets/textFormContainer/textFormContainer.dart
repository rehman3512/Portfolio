import 'package:flutter/material.dart';
import 'package:portfolio/Controller/Widgets/AppColor/appColor.dart';

class textFormContainer extends StatelessWidget {
  final String text;
  const textFormContainer({super.key,required this.text});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(height: 45,width: 150,
      decoration: BoxDecoration(
        color: AppColor.lightGreyColor,
        border: Border.all(color: AppColor.greyColor),
        borderRadius: BorderRadius.circular(5)
      ),child: Center(
        child: TextFormField(
            style: TextStyle(color: AppColor.whiteColor,fontSize: 12,
                fontWeight: FontWeight.w600),
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: text,
              hintStyle: TextStyle(color: AppColor.whiteColor,fontSize: 12,
                  fontWeight: FontWeight.w600),
            ),
          ),
      ),
      ),
    );
  }
}

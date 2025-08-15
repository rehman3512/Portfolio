import 'package:flutter/material.dart';
import 'package:portfolio/Controller/Widgets/AppColor/appColor.dart';
import 'package:portfolio/Controller/Widgets/textWidget/textWidget.dart';
import 'package:portfolio/View/HomeView/lastpage/lastpage.dart';
import 'package:portfolio/View/HomeView/page1/page1.dart';
import 'package:portfolio/View/HomeView/page2/page2.dart';
import 'package:url_launcher/url_launcher.dart';

class MainScreenView extends StatefulWidget {
  const MainScreenView({super.key});

  @override
  State<MainScreenView> createState() => _MainScreenViewState();
}

class _MainScreenViewState extends State<MainScreenView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        // scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Page1(),
            Page2(),
            LastPage()
          ],
        ),
      ),
    );
  }
}





class  WhatsappButton extends StatelessWidget {
  const  WhatsappButton({super.key});

  Future<void> _launchWhatsapp() async {
    final String phoneNumber = "+923499856995";
    final String whatsappUrl = "https://wa.me/$phoneNumber";

    if(await canLaunchUrl(Uri.parse(whatsappUrl))) {
      await launchUrl(Uri.parse(whatsappUrl),mode: LaunchMode.externalApplication);
    } else {
      throw "Could not launch whatsapp";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ElevatedButton( onPressed: () async{
        try {
          await _launchWhatsapp();
        } catch (error) {
          ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text("Failed to open whatsapp: $error"),
                backgroundColor: AppColor.redColor,)
          );
        }
      },style: ElevatedButton.styleFrom(
          backgroundColor: AppColor.greyColor,
          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15)
      ),
          child: TextWidget(text: "Open Whatsapp", color: AppColor.blackColor, fontsize: 16,
              fontWeight: FontWeight.w600)),
    );
  }
}

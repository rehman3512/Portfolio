import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeController extends GetxController {
  var selectedIndex = 0.obs;

  void changepage(int index)
  {
    selectedIndex.value = index;
  }

  void UrlLauncher(String url)async{
    final Uri uri = Uri.parse(url);
    if(!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw Exception("Could not launch $url");
    }
  }


}
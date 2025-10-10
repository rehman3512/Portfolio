import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextWidget extends StatelessWidget {
  final String text;
  final Color color;
  final double fontsize;
  final FontWeight? fontWeight;
  const TextWidget({super.key,required this.text,required this.color,
  required this.fontsize,required this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return Text(text,softWrap: true,
      overflow: TextOverflow.visible,
      style: GoogleFonts.poppins(
      color: color, fontSize: fontsize,
      fontWeight: fontWeight
    ),);
  }
}

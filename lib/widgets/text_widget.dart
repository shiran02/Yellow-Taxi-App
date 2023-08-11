import 'package:flutter/cupertino.dart';
import 'package:yellow_taxi_app/utils/app_constatns.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/app_colors.dart';

Widget textWidget({
    required String text,
    required double fontSize,
    required FontWeight fontWeight,
    required Color color,
    required TextAlign textAlign
    }) {
  return Text(
    text,
   // style: TextStyle(fontSize: fontSize,fontWeight: fontWeight, color: color),
    style: GoogleFonts.poppins(fontSize: fontSize,fontWeight: fontWeight,color: color),
  );
}

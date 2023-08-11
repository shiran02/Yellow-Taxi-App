import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yellow_taxi_app/utils/app_constatns.dart';
import 'package:yellow_taxi_app/widgets/text_widget.dart';
import '../utils/app_colors.dart';

Widget loginWidget(CountryCode countryCode, Function() onCountryChanged) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          SizedBox(
            height: 40,
          ),

          textWidget(
              text: AppConstants.helloNiceToMeetYou,
              color: AppColors.yellowColor,
              fontWeight: FontWeight.normal,
              fontSize: 16,
              textAlign: TextAlign.start),
          textWidget(
              text: AppConstants.getMovingWithGreeenTaxi,
              color: AppColors.yellowColor,
              fontWeight: FontWeight.bold,
              fontSize: 21,
              textAlign: TextAlign.start),

          SizedBox(
            height: 10,
          ),

          Container(
            width: double.infinity,
            height: 65,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: AppColors.yellowColor.withOpacity(0.2),
                  spreadRadius: 3,
                  blurRadius: 12,
                )
              ],
            ),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: InkWell(
                    onTap:() => onCountryChanged(),
                    child: Row(
                      children: [

                        Expanded(
                            child: Container(
                              child: countryCode.flagImage,
                            )
                        ),

                        // SizedBox(
                        //   width: 3,
                        // ),

                        textWidget(
                            text: countryCode.dialCode,
                            textAlign: TextAlign.start,
                            fontSize: 13,
                            fontWeight: FontWeight.normal,
                            color: AppColors.yellowColor
                        ),
                        //


                        const Icon(
                          Icons.keyboard_arrow_down,
                          color: AppColors.yellowColor,
                        ),
                      ],
                    ),
                  ),
                ),


                Container(
                  width: 4,
                  height: 65,
                  decoration: BoxDecoration(
                    color: AppColors.yellowColor.withOpacity(0.2),
                  ),
                ),


                Expanded(
                  flex: 3,
                  child: Container(
                    margin: EdgeInsets.only(left: 15),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: AppConstants.enterMobileNumber,
                        hintStyle: GoogleFonts.poppins(
                            fontSize: 14, color: AppColors.yellowColor),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          SizedBox(
            height: 30,
          ),


          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    style: GoogleFonts.poppins(fontSize: 14),
                    children: [
                      TextSpan(
                          text: AppConstants.byCreating + ' ',
                          style: TextStyle(
                            color: AppColors.yellowColor,
                          )),
                      TextSpan(
                          text: AppConstants.termsOfServices + ' ',
                          style: TextStyle(
                              color: AppColors.yellowColor,
                              fontWeight: FontWeight.bold)),
                      TextSpan(
                          text: ' and ',
                          style: TextStyle(
                            color: AppColors.yellowColor,
                          )),
                      TextSpan(
                          text: AppConstants.privacyPolicy,
                          style: TextStyle(
                              color: AppColors.yellowColor,
                              fontWeight: FontWeight.bold)),
                    ])),
          ),
        ],
      ),
    ),
  );
}

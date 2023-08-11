import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:yellow_taxi_app/widgets/login_widget.dart';

import '../widgets/backgroundintro_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  ////default country code...
  final countryPicker = const  FlCountryCodePicker();

  CountryCode countryCode = const CountryCode(name: "Sri Lanka", code: "LK", dialCode: "+94");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Get.width,
        height: Get.height,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ////// background part
                backgroundIntro(),
                ////// login part
                loginWidget(countryCode,() async {
                  final code = await countryPicker.showPicker(context: context);
                  if (code != null)  countryCode = code;
                  setState(() {

                  });
                },
    ),

              ],
          ),
        ),
      ),
    );
  }
}

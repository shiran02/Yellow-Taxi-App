import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/backgroundintro_widget.dart';

class OtpverificationScreen extends StatefulWidget {
  const OtpverificationScreen({Key? key}) : super(key: key);

  @override
  State<OtpverificationScreen> createState() => _OtpverificationScreenState();
}

class _OtpverificationScreenState extends State<OtpverificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            backgroundIntro(),
          ],
        ),


      ),
    );
  }
}

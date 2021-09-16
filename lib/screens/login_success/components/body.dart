import 'package:app_absensi/size_config.dart';
import 'package:flutter/material.dart';

import 'package:app_absensi/components/default_button.dart';
import 'package:app_absensi/screens/dashboard/home/homepage.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          "assets/images/berhasil.png",
          height: SizeConfig.screenHeight * 0.4,
        ),
        SizedBox(height: SizeConfig.screenHeight * 0.10),
        Text(
          "Login Success",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(30),
          ),
        ),
        Spacer(),
        SizedBox(
          width: SizeConfig.screenWidth * 0.6,
          child: DefaultButton(
            text: "Continue",
            press: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage())),
          ),
        ),
        Spacer(),
      ],
    );
  }
}

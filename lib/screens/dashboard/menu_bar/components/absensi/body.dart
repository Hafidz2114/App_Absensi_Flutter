import 'package:flutter/material.dart';

import 'form_checkin.dart';
import 'form_checkout.dart';
import 'header_card.dart';
import '../../../../../size_config.dart';

class AbsensiMasuk extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight * 0.02),
                TextBannerMasuk(),
                SizedBox(height: SizeConfig.screenHeight * 0.05),
                CheckInForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class AbsensiPulang extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight * 0.02),
                TextBannerPulang(),
                SizedBox(height: SizeConfig.screenHeight * 0.05),
                CheckOutForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
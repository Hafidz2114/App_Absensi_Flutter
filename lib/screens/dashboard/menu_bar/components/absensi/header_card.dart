import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../size_config.dart';


class TextBannerMasuk extends StatelessWidget {
  const TextBannerMasuk({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      margin: EdgeInsets.all(getProportionateScreenWidth(20)),
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
        vertical: getProportionateScreenWidth(15),
      ),
      decoration: BoxDecoration(
        color: kBackgroundColor ,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey[350],
            offset: const Offset(
              5.0,
              5.0,
            ),
            blurRadius: 10.0,
            spreadRadius: 2.0,
          ), //BoxShadow
          BoxShadow(
            color: Colors.white,
            offset: const Offset(0.0, 0.0),
            blurRadius: 0.0,
            spreadRadius: 0.0,
          ), //Bo
        ],
      ),
      child: Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text:
                  "Selamat Pagi, ini adalah menu absensi silahkan Check In sebelum anda mulai bekerja",
              style: TextStyle(
                fontSize: getProportionateScreenWidth(16),
              ),
            ),
          ],
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}


class TextBannerPulang extends StatelessWidget {
  const TextBannerPulang({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      margin: EdgeInsets.all(getProportionateScreenWidth(20)),
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
        vertical: getProportionateScreenWidth(15),
      ),
      decoration: BoxDecoration(
        color: kBackgroundColor ,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey[350],
            offset: const Offset(
              5.0,
              5.0,
            ),
            blurRadius: 10.0,
            spreadRadius: 2.0,
          ), //BoxShadow
          BoxShadow(
            color: Colors.white,
            offset: const Offset(0.0, 0.0),
            blurRadius: 0.0,
            spreadRadius: 0.0,
          ), //Bo
        ],
      ),
      child: Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text:
                  "Selamat Sore, ini adalah menu absensi silahkan Check Out sebelum anda pulang ke rumah",
              style: TextStyle(
                fontSize: getProportionateScreenWidth(16),
              ),
            ),
          ],
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}

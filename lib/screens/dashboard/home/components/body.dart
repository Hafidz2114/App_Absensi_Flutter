import 'package:flutter/material.dart';

import 'package:app_absensi/size_config.dart';
import 'carousel_card.dart';
import 'home_header.dart';
import 'menu_card.dart';
import 'notif_card.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderBox(size: size),
          SizedBox(height: getProportionateScreenWidth(30)),
          ListMenu(),
          SizedBox(height: getProportionateScreenWidth(30)),
          InfoCard(),
          SizedBox(height: getProportionateScreenWidth(30)),
          CarouselCard(),
        ],
      ),
    );
  }
}

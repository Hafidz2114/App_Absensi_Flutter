import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../size_config.dart';
import 'package:app_absensi/screens/dashboard/menu_bar/absensi.dart';
import 'package:app_absensi/screens/dashboard/menu_bar/izin.dart';
import 'package:app_absensi/screens/dashboard/menu_bar/lembur.dart';
import 'package:app_absensi/screens/dashboard/menu_bar/kalender.dart';

class ListMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {"icon": "assets/icons/Absensi.svg", "text": "Absensi"},
      {"icon": "assets/icons/Izin.svg", "text": "Izin"},
      {"icon": "assets/icons/Lembur.svg", "text": "Lembur"},
      {"icon": "assets/icons/Kalender.svg", "text": "Kalender"},
      {"icon": "assets/icons/Scanner.svg", "text": "Scanner"},
    ];
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...List.generate(
            categories.length,
            (index) => MenuCard(
              icon: categories[index]["icon"],
              text: categories[index]["text"],
              press: () {
                if (index == 0) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AbsensiScreen()),
                  );
                }

                if (index == 1) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => IzinScreen()),
                  );
                }

                if (index == 2) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => LemburScreen()),
                  );
                }

                if (index == 3) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => KalenderScreen()),
                  );
                }

                // if (index == 3) {
                //   Navigator.push(
                //     context,
                //     MaterialPageRoute(builder: (context) => ScannerScreen()),
                //   );
                // }
              },
            ),
          ),
        ],
      ),
    );
  }
}

class MenuCard extends StatelessWidget {
  const MenuCard({
    Key key,
    @required this.icon,
    @required this.text,
    @required this.press,
  }) : super(key: key);

  final String icon, text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        width: getProportionateScreenWidth(50),
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: Container(
                padding: EdgeInsets.all(getProportionateScreenWidth(10)),
                decoration: BoxDecoration(
                  color: Color(0xE8E8E8E8),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: SvgPicture.asset(icon),
              ),
            ),
            const SizedBox(height: 5),
            Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 11),
            ),
          ],
        ),
      ),
    );
  }
}

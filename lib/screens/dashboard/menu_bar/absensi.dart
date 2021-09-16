import 'package:app_absensi/constants.dart';
import 'package:flutter/material.dart';

import 'components/body_absensi.dart';

class AbsensiScreen extends StatelessWidget {
  static String routeName = "/Absensi";

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              indicatorColor: kPrimaryColor,
              labelColor: Colors.black,
              tabs: [
                Tab(text: "Masuk"),
                Tab(text: "Pulang"),
              ],
            ),
            centerTitle: true,
            title: Text("Absensi"),
          ),
          body: TabBarView(
            children: [
              AbsensiMasuk(),
              AbsensiPulang(),
            ],
          ),
        ),
      );
  }
}

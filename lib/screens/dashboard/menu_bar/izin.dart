import 'package:flutter/material.dart';

import 'components/izin/body.dart';

class IzinScreen extends StatelessWidget {
  static String routeName = "/Izin";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Pengajuan Izin"),
      ),
      body: Body(),
    );
  }
}

import 'package:app_absensi/constants.dart';
import 'package:flutter/material.dart';

import 'components/body.dart';

class HistoriScreen extends StatelessWidget {
  static String routeName = "/histori";
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Histori Aktivitas",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: kPrimaryColor,
      ),
      body: Histori(),
    );
  }
}

import 'package:flutter/material.dart';

import 'components/lembur/body.dart';

class LemburScreen extends StatelessWidget {
  static String routeName = "/Lembur";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Pengajuan Lembur"),
      ),
      body: Body(),
    );
  }
}

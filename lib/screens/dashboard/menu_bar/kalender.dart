import 'package:flutter/material.dart';

import 'components/kalender/body.dart';

class KalenderScreen extends StatelessWidget {
  static String routeName = "/Kalender";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Kalender"),
      ),
      body: Body(),
    );
  }
}


import 'package:flutter/material.dart';

import '../../constants.dart';
import 'components/body.dart';

class BeritaScreen extends StatelessWidget {
  static String routeName = "/berita";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Berita",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: kPrimaryColor,
      ),
      body: Berita(),
    );
  }
}

import 'package:flutter/material.dart';

import 'form.dart';
import 'picture.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ProfilePic(),
          SizedBox(height: 20),
          ListTile(
            title: Center(
              child: Text(
                'Nama :',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          ProfileForm(
            text: "Hafidz Fadhillah Febrianto",
            press: () {},
          ),
          ListTile(
            title: Center(
              child: Text(
                'Alamat :',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          ProfileForm(
            text: "Jln. Nangka Kepuharjo, Lumajang",
            press: () {},
          ),
          ListTile(
            title: Center(
              child: Text(
                'Bio :',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          ProfileForm(
            text: "Sedang Mabar",
            press: () {},
          ),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}
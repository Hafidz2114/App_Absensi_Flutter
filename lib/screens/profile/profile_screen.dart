import 'package:flutter/material.dart';

import 'package:app_absensi/screens/login/login_screen.dart';
import 'package:app_absensi/constants.dart';
import 'components/body.dart';

class ProfileScreen extends StatefulWidget {
  static String routeName = "/profile";

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Profil",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: kPrimaryColor,
        actions: [
          IconButton(
            tooltip: 'Logout',
            icon: Icon(Icons.power_settings_new),
            color: Colors.white,
            onPressed: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginScreen())),
          ),
        ],
      ),
      body: Profile(),
    );
  }
}

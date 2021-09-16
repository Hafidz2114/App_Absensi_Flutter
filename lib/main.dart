import 'package:flutter/material.dart';
import 'package:app_absensi/routes.dart';
import 'package:app_absensi/screens/login/login_screen.dart';
import 'package:app_absensi/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App Absensi',
      theme: theme(),  
      initialRoute: LoginScreen.routeName,
      routes: routes,
    );
  }
}

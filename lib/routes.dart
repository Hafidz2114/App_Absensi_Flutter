import 'package:app_absensi/screens/dashboard/menu_bar/kalender.dart';
import 'package:app_absensi/screens/dashboard/menu_bar/lembur.dart';
import 'package:flutter/widgets.dart';


import 'package:app_absensi/screens/login_success/login_success.dart';
import 'package:app_absensi/screens/berita/components/detail_screen.dart';
import 'package:app_absensi/screens/login/login_screen.dart';
import 'package:app_absensi/screens/profile/profile_screen.dart';
import 'package:app_absensi/screens/berita/berita_screen.dart';
import 'package:app_absensi/screens/histori/histori_screen.dart';

import 'screens/dashboard/home/homepage.dart';
import 'screens/dashboard/menu_bar/izin.dart';
import 'screens/dashboard/menu_bar/absensi.dart';


final Map<String, WidgetBuilder> routes = {
  LoginScreen.routeName: (context) => LoginScreen(),
  LoginSuccess.routeName: (context) => LoginSuccess(),
  HomePage.routeName: (context) => HomePage(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
  HistoriScreen.routeName: (context) => HistoriScreen(),
  BeritaScreen.routeName: (context) => BeritaScreen(),
  DetailScreen.routeName: (context) => DetailScreen(),
  AbsensiScreen.routeName: (context) => AbsensiScreen(),
  IzinScreen.routeName: (context) => IzinScreen(),
  LemburScreen.routeName: (context) => LemburScreen(),
  KalenderScreen.routeName: (context) => KalenderScreen(),
};

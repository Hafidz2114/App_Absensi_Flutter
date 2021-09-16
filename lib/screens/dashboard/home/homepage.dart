import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'components/body.dart';
import 'package:app_absensi/screens/berita/berita_screen.dart';
import 'package:app_absensi/screens/histori/histori_screen.dart';
import 'package:app_absensi/screens/profile/profile_screen.dart';
import 'package:app_absensi/components/custom_bottomnavbar.dart';


class HomePage extends StatefulWidget {
  static String routeName = "/homepage";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  List<Widget> _widgetOptions = <Widget>[
    Body(),
    BeritaScreen(),
    HistoriScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 8,
        color: Colors.white,
        child: Container(
          height: 65,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Expanded(
                child: CustomBottonNavigatorItem(
                  icon: FontAwesomeIcons.home,
                  title: "Home",
                  onTap: () {
                    _selectedIndex = 0;
                    setState(() {});
                  },
                  isActive: _selectedIndex == 0,
                ),
              ),
              Expanded(
                child: CustomBottonNavigatorItem(
                  icon: FontAwesomeIcons.bell,
                  iconActive: FontAwesomeIcons.solidBell,
                  title: "Berita",
                  onTap: () {
                    _selectedIndex = 1;
                    setState(() {});
                  },
                  isActive: _selectedIndex == 1,
                ),
              ),
              Expanded(
                child: CustomBottonNavigatorItem(
                  icon: FontAwesomeIcons.history,
                  title: "Histori",
                  onTap: () {
                    _selectedIndex = 2;
                    setState(() {});
                  },
                  isActive: _selectedIndex == 2,
                ),
              ),
              Expanded(
                child: CustomBottonNavigatorItem(
                  icon: FontAwesomeIcons.user,
                  iconActive: FontAwesomeIcons.solidUser,
                  title: "Profil",
                  onTap: () {
                    _selectedIndex = 3;
                    setState(() {});
                  },
                  isActive: _selectedIndex == 3,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

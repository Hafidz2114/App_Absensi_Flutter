import 'package:flutter/material.dart';

import '../constants.dart';

class CustomBottonNavigatorItem extends StatelessWidget {
  const CustomBottonNavigatorItem({
    Key key,
    @required this.icon,
    this.iconActive,
    @required this.title,
    this.isActive = false,
    this.onTap,
  }) : super(key: key);

  final String title;
  final IconData icon;
  final IconData iconActive;
  final Function onTap;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Material(
        child: Container(
          margin: EdgeInsets.all(5),
          child: Column(
            children: <Widget>[
              Spacer(),
              isActive
                  ? iconActive != null
                      ? Icon(
                          iconActive,
                          color: isActive ? kPrimaryColor : Colors.grey,
                        )
                      : Icon(
                          icon,
                          color: isActive ? kPrimaryColor : Colors.grey,
                        )
                  : Icon(
                      icon,
                      color: isActive ? kPrimaryColor : Colors.grey,
                    ),
              Spacer(),
              Text(
                title,
                style: TextStyle(
                  color: isActive ? kPrimaryColor : Colors.grey,
                  fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
                ),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../../constants.dart';

class ProfileForm extends StatelessWidget {
  const ProfileForm({
    Key key,
    @required this.text,
    @required this.press,
  }) : super(key: key);

  final String text;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: TextButton(
        style: TextButton.styleFrom(
          padding: EdgeInsets.all(17),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          backgroundColor: Colors.white70,
          primary: kTextColor,
        ),
        onPressed: press,
        child: Row(
          children: [
            Expanded(
                child: Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
              ),
            ))
          ],
        ),
      ),
    );
  }
}

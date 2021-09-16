import 'package:flutter/material.dart';

class ProfilePic extends StatelessWidget {
  const ProfilePic({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget> [
        Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.center,
          children: [
            Image(
              height: MediaQuery.of(context).size.height / 3,
              fit: BoxFit.cover,
              image: AssetImage("assets/images/ProfilBg.jpg"),
            ),
            Positioned(
              bottom: -60,
              child: CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage("assets/images/foto.jpg"),
              ),
            ),
          ],
        ),
        SizedBox(height: 60),
        ListTile(
          title: Center(
            child: Text(
              'Hafidz Fadhillah',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          subtitle: Center(
            child: Text(
              'CEO Of Otsutsuki Clan',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

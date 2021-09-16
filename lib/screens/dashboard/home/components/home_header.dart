import 'package:flutter/material.dart';

import '../../../../constants.dart';

class HeaderBox extends StatelessWidget {
  const HeaderBox({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.20,
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
              left: kDefaultPadding,
              right: kDefaultPadding,
              top: kDefaultPadding - 7,
            ),
            height: size.height * 0.3,
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(35),
                bottomRight: Radius.circular(35),
              ),
            ),
            child: Row(
              children: <Widget>[
                Text("Hai Kamu ! \nSelamat Datang 👋",
                  style: Theme.of(context).textTheme.headline5.copyWith(
                    color: Colors.white, fontSize: 18),
                ),
                Spacer(),
                Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white,
                      width: 2.0,
                    ),
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('assets/images/foto.jpg'),
                      fit: BoxFit.fill
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

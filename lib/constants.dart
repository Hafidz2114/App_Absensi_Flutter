import 'package:flutter/material.dart';
import 'package:app_absensi/size_config.dart';

// Colors that we use in our app
const kPrimaryColor = Color(0xFF0C9869);
const kTextColor = Color(0xFF3C4046);
const kBackgroundColor = Color(0xFFF9F8FD);

final headingStyle = TextStyle(
  fontSize: getProportionateScreenWidth(28),
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);

const double kDefaultPadding = 20.0;

//Form Error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Mohon isi email kamu";
const String kInvalidEmailError = "Mohon isi email kamu dengan benar";
const String kPassNullError = "Mohon isi password kamu";
const String kShortPassError = "Password terlalu pendek";
const String kMatchPassError = "Password tidak cocok";

const String kNameNullError = "Mohon isi nama kamu";
const String kDateNullError = "Mohon pilih tanggal kamu";
const String kTimeNullError = "Mohon pilih jam kamu";
const String kReasonNullError = "Mohon isi keperluan kamu";

final otpInputDecoration = InputDecoration(
  contentPadding:
      EdgeInsets.symmetric(vertical: getProportionateScreenWidth(15)),
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(getProportionateScreenWidth(15)),
    borderSide: BorderSide(color: kTextColor),
  );
}

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../../../constants.dart';
import '../../../../../size_config.dart';
import 'package:app_absensi/components/default_button.dart';
import 'package:app_absensi/components/form_error.dart';
import 'package:app_absensi/helper/keyboard.dart';

class CheckInForm extends StatefulWidget {
  @override
  _CheckInFormState createState() => _CheckInFormState();
}

class _CheckInFormState extends State<CheckInForm> {
  final _fromKey = GlobalKey<FormState>();
  String nama;
  DateTime date;
  TimeOfDay time;

  final List<String> errors = [];

  void addError({String error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error);
      });
  }

  void removeError({String error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

  String getDate() {
    if (date == null) {
      return 'Pilih Tanggal Hari Ini';
    } else {
      return DateFormat('EEEEEEEEE, dd - MM - yyyy').format(date);
    }
  }

  String getTime() {
    if (time == null) {
      return 'Pilih Jam Kehadiran';
    } else {
      final hours = time.hour.toString().padLeft(2, '0');
      final minutes = time.minute.toString().padLeft(2, '0');

      return '$hours:$minutes';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _fromKey,
      child: Column(
        children: [
          buildNameFormField(),
          SizedBox(height: getProportionateScreenHeight(45)),
          buildDateFromField(),
          SizedBox(height: getProportionateScreenHeight(45)),
          buildTimeFromField(),
          SizedBox(height: getProportionateScreenHeight(10)),
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(35)),
          SizedBox(
            width: SizeConfig.screenWidth * 0.6,
            child: DefaultButton(
              text: "Check In",
              press: () {
                if (_fromKey.currentState.validate()) {
                  _fromKey.currentState.save();
                  // If login success
                  KeyboardUtil.hideKeyboard(context);
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Processing Data')),
                  );
                  // Navigator.pushReplacement(context,
                  //   MaterialPageRoute(builder: (context) => SuccessMessage()));
                }
              },
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(35)),
        ],
      ),
    );
  }

  TextFormField buildNameFormField() {
    return TextFormField(
      keyboardType: TextInputType.name,
      onSaved: (newValue) => nama = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kNameNullError);
        }
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kNameNullError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Nama",
        hintText: "Masukan nama kamu",
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  TextEditingController datecontroller = TextEditingController();
  TextFormField buildDateFromField() {
    return TextFormField(
      keyboardType: TextInputType.datetime,
      controller: datecontroller,
      validator: (value) {
        if (value.isEmpty) {
          return kDateNullError;
        }
        return null;
      },
      onTap: () {
        pickDate(context);
        FocusScope.of(context).requestFocus(new FocusNode());
      },
      decoration: InputDecoration(
        labelText: "Tanggal Check In",
        hintText: "${getDate()}",
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  TextEditingController timecontroller = TextEditingController();
  TextFormField buildTimeFromField() {
    return TextFormField(
      keyboardType: TextInputType.datetime,
      controller: timecontroller,
      validator: (value) {
        if (value.isEmpty) {
          return kTimeNullError;
        }
        return null;
      },
      onTap: () {
        pickTime(context);
        FocusScope.of(context).requestFocus(new FocusNode());
      },
      decoration: InputDecoration(
        labelText: "Jam Check In",
        hintText: "${getTime()}",
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  // Date Picker
  Future pickDate(BuildContext context) async {
    final initialDate = DateTime.now();
    final newDate = await showDatePicker(
      context: context,
      initialDate: date ?? initialDate,
      firstDate: DateTime(DateTime.now().year - 5),
      lastDate: DateTime(DateTime.now().year + 5),
      builder: (BuildContext context, Widget child) {
        return Theme(
          data: ThemeData.light().copyWith(
            primaryColor: Colors.teal,
            accentColor: Colors.teal,
            colorScheme: ColorScheme.light(primary: Colors.teal),
            buttonTheme: ButtonThemeData(textTheme: ButtonTextTheme.primary),
          ),
          child: child,
        );
      },
    );

    if (newDate == null) return;

    setState(
      () => {
        date = newDate,
        datecontroller.text = "${getDate()}",
      },
    );
  }

  //Time Picker
  Future pickTime(BuildContext context) async {
    final initialTime = TimeOfDay(hour: 9, minute: 0);
    final newTime = await showTimePicker(
      context: context,
      initialTime: time ?? initialTime,
      builder: (BuildContext context, Widget child) {
        return Theme(
          data: ThemeData.light().copyWith(
            primaryColor: Colors.teal,
            accentColor: Colors.teal,
            colorScheme: ColorScheme.light(primary: Colors.teal),
            buttonTheme: ButtonThemeData(textTheme: ButtonTextTheme.primary),
          ),
          child: child,
        );
      },
    );

    if (newTime == null) return;

    setState(
      () => {
        time = newTime,
        timecontroller.text = "${getTime()}",
      },
    );
  }
}

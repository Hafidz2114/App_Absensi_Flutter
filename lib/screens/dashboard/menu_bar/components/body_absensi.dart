import 'package:flutter/material.dart';

class AbsensiMasuk extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'First Activity Screen',
          style: TextStyle(fontSize: 21),
        ),
      ),
    );
  }
}

class AbsensiPulang extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Second Activity Screen',
          style: TextStyle(fontSize: 21),
        ),
      ),
    );
  }
}
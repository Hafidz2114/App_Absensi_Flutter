import 'package:flutter/material.dart';

class Histori extends StatelessWidget {
  final titles = [
    "Absensi Masuk",
    "Absensi Pulang",
    "Pengajuan Izin",
    "Pengajuan Lembur",
    "Absensi Masuk",
    "Absensi Pulang",
    "Pengajuan Izin",
    "Pengajuan Lembur"
  ];

  final subtitles = [
    "Presensi masuk jam 06.00",
    "Presensi pulang jam 17.25",
    "Izin menghadiri nikahan mantan",
    "Lembur menyelesaikan project",
    "Presensi masuk jam 06.00",
    "Presensi pulang jam 17.25",
    "Izin menghadiri nikahan mantan",
    "Lembur menyelesaikan project",
  ];

  final icons = [
    Icons.fingerprint,
    Icons.alarm,
    Icons.mail,
    Icons.more_time,
    Icons.fingerprint,
    Icons.alarm,
    Icons.mail,
    Icons.more_time,
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: titles.length,
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            title: Text(titles[index]),
            subtitle: Text(subtitles[index]),
            leading: CircleAvatar(
              backgroundImage: AssetImage(
                  "assets/images/foto.jpg"),
            ),
            trailing: Icon(icons[index]),
          ),
        );
      },
    );
  }
}

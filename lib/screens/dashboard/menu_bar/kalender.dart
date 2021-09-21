import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class KalenderScreen extends StatelessWidget {
  static String routeName = "/Kalender";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Kalender"),
      ),
      body: SfCalendar(
        view: CalendarView.month,
        firstDayOfWeek: 1,
        monthViewSettings: MonthViewSettings(showAgenda: true),
        showDatePickerButton: true,
        allowViewNavigation: true,
        
        allowedViews: <CalendarView>
        [
          CalendarView.day,
          CalendarView.week,
          CalendarView.workWeek,
          CalendarView.month,
          CalendarView.schedule
        ],
      ),
    );
  }
}

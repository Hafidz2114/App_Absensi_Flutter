import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SfCalendar(
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
      dataSource: _getDataSource(),
    );
  }

  _DataSource _getDataSource() {
    final List<Appointment> appointments = <Appointment>[];
    appointments.add(Appointment(
      startTime: DateTime.now(),
      endTime: DateTime.now().add(Duration(minutes: 45)),
      subject: 'Meeting',
      color: Colors.red,
    ));

    return _DataSource(appointments);
  }
}

class _DataSource extends CalendarDataSource {
  _DataSource(List<Appointment> source) {
    appointments = source;
  }
}
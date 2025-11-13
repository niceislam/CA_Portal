import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class BottomAttendance extends StatelessWidget {
  const BottomAttendance({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          color: Colors.white,
          child: SizedBox(
            width: MediaQuery.sizeOf(context).width,
            child: TableCalendar(

              focusedDay: DateTime.now(),
              firstDay: DateTime.now(),
              lastDay: DateTime.now(),
            ),
          ),
        ),
      ],
    );
  }
}

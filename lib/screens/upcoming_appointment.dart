import 'package:Telemedicine_ui/data/data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:Telemedicine_ui/widget/widget.dart';

class UpcomingAppointmentScreen extends StatefulWidget {
  @override
  _UpcomingAppointmentScreenState createState() =>
      _UpcomingAppointmentScreenState();
}

class _UpcomingAppointmentScreenState extends State<UpcomingAppointmentScreen> {
  final _sortByTitle = ["All", "Category", "Time"];

  String selectedValue = "All";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 15),
        Expanded(
          child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: doctorCalender.length,
              itemBuilder: (context, index) {
                final calender = doctorCalender[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 12.0, horizontal: 24.0),
                  child: calender.name == null
                      ? Center(
                        child: Text(
                            "${calender.dayOfTheWeek} ${calender.month} ${calender.day}",
                            style: TextStyle(
                                color: Colors.grey[400],
                                fontWeight: FontWeight.bold),
                          ),
                      )
                      : CalenderItem(calender: calender),
                );
              }),
        )
      ],
    );
  }
}

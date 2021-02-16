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
        _sortContainer(),
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

  Widget _sortContainer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Sort by:",
          style: TextStyle(color: Colors.grey[400]),
        ),
        SizedBox(width: 10),
        Container(
          height: 35.0,
          padding: EdgeInsets.symmetric(vertical: 2.0, horizontal: 4.0),
          child: DropdownButton(
            icon: Icon(
              Icons.arrow_drop_down,
              color: Colors.grey[400],
            ),
            value: selectedValue,
            items: _sortByTitle
                .map(
                  (String value) => DropdownMenuItem(
                    value: value,
                    child:
                        Text(value, style: TextStyle(color: Colors.grey[400])),
                  ),
                )
                .toList(),
            onChanged: (value) => setState(() => selectedValue = value),
          ),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey[400]),
              borderRadius: BorderRadius.circular(8.0)),
        )
      ],
    );
  }
}

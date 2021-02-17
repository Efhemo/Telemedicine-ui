import 'package:Telemedicine_ui/screens/past_appointment.dart';
import 'package:Telemedicine_ui/screens/upcoming_appointment.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:Telemedicine_ui/widget/widget.dart';

class TypeAppointmentsScreen extends StatefulWidget {
  @override
  _TypeAppointmentsScreenState createState() => _TypeAppointmentsScreenState();
}

class _TypeAppointmentsScreenState extends State<TypeAppointmentsScreen> {

  final _destination = [UpcomingAppointmentScreen(), PastAppointmentScreen()];
  int _currentItem = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomHorizontalTab(
            titles: ["Upcoming Appointments", "Past Appointments"],
            onTap: (index) => setState(() => _currentItem = index)
        ),
        Expanded(
          child: IndexedStack(
            index: _currentItem,
            children: _destination,
          ),
        )
      ],
    );
  }
}

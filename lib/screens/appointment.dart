import 'package:Telemedicine_ui/screens/type_appointment.dart';
import 'package:Telemedicine_ui/screens/type_availability.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:Telemedicine_ui/widget//widget.dart';

class AppointmentScreen extends StatefulWidget {
  @override
  _AppointmentScreenState createState() => _AppointmentScreenState();
}

class _AppointmentScreenState extends State<AppointmentScreen> {
  final List<Widget> _appointmentType = [TypeAppointmentsScreen(), TypeAvailabilityScreen()];

  int _currentType = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: _appBarAction("assets/icons/back_arrow.png"),
        title: Text("Appointments",
            style: TextStyle(
                fontSize: 24.0,
                letterSpacing: 0.8,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).primaryColor)),
        actions: [_appBarTrailing("assets/icons/calender.png")],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 70.0),
            child: CustomTapBar(
                titles: ["Appointments", "Availability"],
                onClick: (index) => setState(() => _currentType = index)),
          ),
          Expanded(
            child: IndexedStack(
              index: _currentType,
              children: _appointmentType,
            ),
          )
        ],
      ),
    );
  }

  Widget _appBarAction(String icon) => IconButton(
        icon: Image.asset(icon, height: 30.0, width: 30.0),
        onPressed: null,
        alignment: Alignment(4, 0),
      );

  Widget _appBarTrailing(String icon) => Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: IconButton(
          icon: Image.asset(icon, height: 30.0, width: 30.0, color: Colors.blue),
          onPressed: null,
        ),
      );
}

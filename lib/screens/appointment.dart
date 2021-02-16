import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:Telemedicine_ui/widget//widget.dart';

class AppointmentScreen extends StatelessWidget {

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
            padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 24.0),
            child: CustomTapBar(
                titles: ["Appointments", "Availability"],
                onClick: (index) => null),
          ),

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

import 'package:Telemedicine_ui/config/palette.dart';
import 'package:Telemedicine_ui/model/calender.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class CalenderItem extends StatelessWidget {

  final AppointmentType appointmentType;
  final Calender calender;
  CalenderItem({this.appointmentType = AppointmentType.Upcoming, @required this.calender });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          color: Colors.grey[50],
          border: Border.all(
              color: Colors.grey[300]),
          borderRadius: BorderRadius.circular(10.0)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                height: 70,
                width: 60,
                decoration: BoxDecoration(
                  color: appointmentType == AppointmentType.Upcoming ? Colors
                      .blueAccent : Colors.yellow,
                    border: Border.all(
                        color: Colors.grey[200]),
                    borderRadius: BorderRadius.circular(8.0)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(calender.month, style: TextStyle(color: Colors.white, fontSize: 12.0),),
                    SizedBox(height: 6),
                    Text(
                      calender.day, style: TextStyle(color: Colors.white, fontSize: 13.0, fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
              SizedBox(width: 12.0),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(calender.name, style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
                    SizedBox(height: 12.0),
                    Text("Category: ${calender.categories}", style: TextStyle(color: Colors.grey[800], fontSize: 12.0),),
                    SizedBox(height: 8.0),
                    Text(calender.complaint, style: TextStyle(fontStyle: FontStyle.italic, color: Colors.grey[900], fontSize: 12.0)  ),
                    SizedBox(height: 8.0),
                    Text(calender.description, style: TextStyle(fontStyle: FontStyle.italic, color: Colors.grey[800], fontSize: 11.0)),
                    SizedBox(height: 10.0),
                    Text(calender.time, style: TextStyle(color: Colors.black, fontSize: 13.0)),
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: 14.0),
          Divider(thickness: 1.0, indent: 40.0, endIndent: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(icon: Icon(MdiIcons.commaCircle, color: Colors.blue[200]), onPressed: null),
              IconButton(icon: Icon(Icons.call), onPressed: null),
              IconButton(icon: Icon(Icons.videocam), onPressed: null)
            ],
          )
        ],
      ),
    );
  }

}

enum AppointmentType {
  Upcoming,
  Past
}
import 'package:Telemedicine_ui/config/palette.dart';
import 'package:Telemedicine_ui/data/data.dart';
import 'package:Telemedicine_ui/widget/availability_item_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart';

class TypeAvailabilityScreen extends StatefulWidget{

  @override
  _TypeAvailabilityScreenState createState() => _TypeAvailabilityScreenState();
}

class _TypeAvailabilityScreenState extends State<TypeAvailabilityScreen> {

  DateTime  _selectedValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 20.0),
        DatePicker(
          DateTime.now(),
          initialSelectedDate: DateTime.now().add(Duration(days: 2)),
          selectionColor: Palette.faintPink,
          selectedTextColor: Colors.black,
          monthTextStyle: TextStyle(color: Colors.grey),
          dateTextStyle: TextStyle(color: Colors.grey),
          dayTextStyle: TextStyle(color: Colors.grey),
          onDateChange: (date) {
            // New date selected
            setState(() {
              _selectedValue = date;
            });
          },
        ),
        SizedBox(height: 20.0),
        Expanded(
          child: ListView.builder (
            itemCount: availabilities.length,
              itemBuilder: (context, index){
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20.0),
                  child: AvailabilityItemCard(availabilities[index]),
                );
              }),
        )
      ],
    );
  }

}
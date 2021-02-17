import 'package:Telemedicine_ui/model/availability.dart';
import 'package:flutter/material.dart';
import 'package:Telemedicine_ui/widget/widget.dart';

class AvailabilityItemCard extends StatelessWidget {

  final Availability availability;

  const AvailabilityItemCard(this.availability);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13.0),
          border: Border.all(color: Colors.grey[300], width: 1.3)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(availability.timeOfDay,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0)),
            SizedBox(height: 6.0),
            Text(availability.time,
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.grey[300], fontSize: 16.0)),
            SizedBox(height: 20.0),
            MultiSelectChipGroup(
              items: availability.times,
              preSelectedItems: availability.bookedTime,
              onSelectionChanged: (values) {
                print(values);
              },
              horizontalChipSpacing: 8,
              selectedColor: Colors.white,
              labelSelectedColor: Theme.of(context).primaryColor,
              verticalChipSpacing: 9,
              labelDisabledColor: Colors.grey[300],
              disabledColor: Colors.white,
            ),
          ],
        ));
  }
}


import 'package:Telemedicine_ui/model/availability.dart';
import 'package:Telemedicine_ui/model/calender.dart';

final doctorCalender = [
    Calender("Jan", "13", "Monday", null,
        "Eye, Teeth", "Complaints",
        "Lorem ipsum dolor sit amet, consecutor,Lorem ipsum dolor sit amet",
        "08:30AM - 09:30AM"),
  Calender("Jan", "13", "Monday", "Kylian Mbapp",
        "Eye, Teeth", "Complaints",
        "Lorem ipsum dolor sit amet, consecutor,Lorem ipsum dolor sit amet",
        "08:30AM - 09:30AM"),
    Calender("Jan" ,  "14", "Tuesday", null,
        "Nose", "Complaints",
        "Lorem ipsum dolor sit amet, consecutor,Lorem ipsum dolor sit amet",
        "08:30AM - 09:30AM"),
  Calender("Jan" , "14", "Tuesday", "Chukwudi Duru",
        "Nose", "Complaints",
        "Lorem ipsum dolor sit amet, consecutor,Lorem ipsum dolor sit amet",
        "08:30AM - 09:30AM"),
  Calender("Jan", "13", "Monday", null,
      "Eye, Teeth", "Complaints",
      "Lorem ipsum dolor sit amet, consecutor,Lorem ipsum dolor sit amet",
      "08:30AM - 09:30AM"),
    Calender("Oct", "15", "Wednesday", "Adegbite femi",
        "Nose, Stomach", "Complaints",
        "Lorem ipsum dolor sit amet, consecutor,Lorem ipsum dolor sit amet",
        "08:30AM - 09:30AM"),
  ];

final availabilities = [
  Availability("Morning", "8:00AM - 12:00AM", ['8:00AM', '8:30AM','9:00AM', '9:30AM', '10:00AM','10:30AM','11:00AM','11:30AM','12:00AM'], ['8:00AM', '9:30AM', '10:00AM', '11:30AM','12:00AM']),
  Availability("Afternoon", "12:00PM - 4:00PM", ['12:00PM', '12:30PM','1:00PM', '1:30PM', '2:00PM','2:30PM','3:00PM','3:30PM','4:00PM'], ['12:00PM', '2:00PM','2:30PM','3:00PM','4:00PM']),
  Availability("Evening", "8:00AM - 12:00PM", ['12:00PM', '12:30PM','1:00PM', '1:30PM', '2:00PM','2:30PM','3:00PM','3:30PM','4:00PM'], ['12:00PM', '1:30PM', '2:00PM','2:30PM','3:00PM','3:30PM']),
];
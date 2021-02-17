import 'package:Telemedicine_ui/config/palette.dart';
import 'package:Telemedicine_ui/screens/appointment.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavScreen extends StatefulWidget {
  @override
  _BottomNavScreenState createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  final _destinations = [Scaffold(), AppointmentScreen(), Scaffold(), Scaffold()];

  final _bottomNavItems = {
    "Home": "assets/icons/home.png",
    "Appointments": "assets/icons/doctor.png",
    "Wallet": "assets/icons/wallet.png",
    "Profile": "assets/icons/person.png"
  };

  int _currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: IndexedStack(
              index: _currentIndex,
              children: _destinations,
            ),
          ),
          Divider(color: Theme.of(context).primaryColor, height: 1, thickness: 1, indent: 0.0)
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          iconSize: 18.0,
          currentIndex: _currentIndex,
          onTap: (index) => setState(() => _currentIndex = index),
          items: _bottomNavItems
              .map((title, icon) => MapEntry(
                  title,
                  BottomNavigationBarItem(
                    icon: _bottomNavIcon(icon),
                    title: _bottomNavTitle(title),
                  )))
              .values
              .toList()),
    );
  }

  Widget _bottomNavTitle(String title) => Container(
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical:4.0, horizontal: 6.0),
      child: Text(title, style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w500)),
    ),
    decoration: BoxDecoration(
        color: Colors.blue[50],
        borderRadius: BorderRadius.circular(10.0)
    ),
  );

  Widget _bottomNavIcon(String icon) => Padding(
    padding: const EdgeInsets.all(8.0),
    child: Image.asset(icon, height: 30.0, width: 30.0),
  );
}

import 'package:Telemedicine_ui/config/palette.dart';
import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:flutter/material.dart';

class CustomTapBar extends StatefulWidget {
  final List<String> titles;
  final Function(int position) onClick;

  CustomTapBar({@required this.titles, @required this.onClick});

  @override
  _CustomTapBarState createState() => _CustomTapBarState();
}

class _CustomTapBarState extends State<CustomTapBar> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: widget.titles.length,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 45.0,
        decoration: BoxDecoration(
            color: Palette.faintBlue,
            borderRadius: BorderRadius.circular(30.0)),
        child: TabBar(
          indicator: BubbleTabIndicator(
              insets: EdgeInsets.symmetric(horizontal: 0.0),
              tabBarIndicatorSize: TabBarIndicatorSize.tab,
              indicatorHeight: 45.0,
              indicatorColor: Theme.of(context).primaryColor,
              indicatorRadius: 30.0),
          labelColor: Colors.white,
          unselectedLabelColor: Theme.of(context).primaryColor,
          tabs: widget.titles
              .map((e) => Text(e))
              .toList(),
          onTap: _setCurrentIndex,
        ),
      ),
    );
  }

  void _setCurrentIndex(int position) {
    setState(() {
      _currentIndex = position;
      widget.onClick(_currentIndex);
    });
  }
}

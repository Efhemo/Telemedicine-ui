import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomHorizontalTab extends StatefulWidget {
  final List<String> titles;
  final Function(int position) onTap;

  const CustomHorizontalTab(
      {Key key, @required this.titles, @required this.onTap})
      : super(key: key);

  @override
  _CustomHorizontalTabState createState() => _CustomHorizontalTabState();
}

class _CustomHorizontalTabState extends State<CustomHorizontalTab> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45.0,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: widget.titles.length,
          itemBuilder: (BuildContext context, int index) {
            return FlatButton(
                child: Text(
                  widget.titles[index],
                  style: TextStyle(
                      fontSize: 18.0,
                      color: _currentIndex == index
                          ? Theme.of(context).primaryColor
                          : Colors.grey),
                ),
                onPressed: () => _setCurrentIndex(index));
          }),
    );
  }

  void _setCurrentIndex(int position) {
    setState(() {
      _currentIndex = position;
      widget.onTap(_currentIndex);
    });
  }
}

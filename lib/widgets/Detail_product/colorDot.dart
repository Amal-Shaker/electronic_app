import 'package:electrical_store/constant.dart';
import 'package:flutter/material.dart';

class ColorDot extends StatelessWidget {
  Color fillColor;
  bool isSelected;
  ColorDot({this.fillColor, this.isSelected});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 3),
      height: 20,
      width: 20,
      decoration: BoxDecoration(
          color: Colors.transparent,
          shape: BoxShape.circle,
          border: Border.all(
              color: this.isSelected ? kTextlightColor : Colors.transparent)),
      child: Container(
        margin: EdgeInsets.all(3),
        height: 10,
        width: 10,
        decoration:
            BoxDecoration(shape: BoxShape.circle, color: this.fillColor),
      ),
    );
  }
}

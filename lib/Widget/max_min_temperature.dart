import 'package:flutter/material.dart';

class MaxMinTemperature extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
      Text("Maksimum:"+42.toString(),style: TextStyle(fontSize: 24)),
      Text("Minimum:"+25.toString(),style: TextStyle(fontSize: 24)),
      ],
    );
  }
}
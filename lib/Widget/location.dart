import 'package:flutter/material.dart';

class Location extends StatelessWidget {
  String selectedCity;
  Location({@required this.selectedCity});

  @override
  Widget build(BuildContext context) {
    return Text("Konya",style: TextStyle(fontSize: 36,fontStyle: FontStyle.italic),);
  }
}

import 'package:flutter/material.dart';

class LastUpdated extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text("Son Güncelleme:"+TimeOfDay.now().toString(),style: TextStyle(fontSize: 24,fontStyle: FontStyle.italic));
  }
}
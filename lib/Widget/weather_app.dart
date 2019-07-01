import 'package:flutter/material.dart';

import 'last_updated.dart';
import 'location.dart';
import 'max_min_temperature.dart';
import 'search_page.dart';
import 'weather_image.dart';

class WeatherApp extends StatelessWidget {
  String selectedCity = "Konya";
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Weather App'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: () => _openSearchPage(context))
        ],
      ),
      body: Container(
        child: Center(
          child: ListView(
            children: <Widget>[
              Center(child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Location(selectedCity: selectedCity,),
              )),
              Center(child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: LastUpdated(),
              )),
              Center(child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: WeatherImage(),
              )),
              Center(child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: MaxMinTemperature(),
              )),

            ],
          ),
        ),
      ),
    );
  }

  void _openSearchPage(BuildContext context) async {
    selectedCity=await Navigator.push(context, MaterialPageRoute(builder: (context)=>SearchPage()));
    debugPrint(selectedCity);
  }
}
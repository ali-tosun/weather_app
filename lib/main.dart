import 'package:flutter/material.dart';

import 'Widget/search_page.dart';
import 'Widget/weather_app.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/':(context) => WeatherApp(),
        '/searchPage':(context) => SearchPage(),
      }
    );
  }
}


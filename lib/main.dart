import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'Blocs/Weather/bloc.dart';
import 'Locator.dart';
import 'Widget/search_page.dart';
import 'Widget/weather_app.dart';

void main(){
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      builder: (context) => WeatherBloc(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: '/',
        routes: {
          '/':(context) => WeatherApp(),
          '/searchPage':(context) => SearchPage(),
        }
      ),
    );
  }
}


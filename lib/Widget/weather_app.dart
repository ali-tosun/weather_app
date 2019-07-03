import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/Blocs/Weather/bloc.dart';
import 'last_updated.dart';
import 'location.dart';
import 'dart:async';
import 'max_min_temperature.dart';
import 'search_page.dart';
import 'weather_image.dart';

class WeatherApp extends StatefulWidget {
  @override
  _WeatherAppState createState() => _WeatherAppState();
}

class _WeatherAppState extends State<WeatherApp> {
  String selectedCity = "Konya";
  Completer<RefreshIndicator> _refreshCompleter = Completer();


  @override
  Widget build(BuildContext context) {
    final weatherBloc = BlocProvider.of<WeatherBloc>(context);
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Weather App'),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.search),
              onPressed: () => _openSearchPage(context, weatherBloc))
        ],
      ),
      body: Container(
        child: Center(
          child: BlocBuilder(
            bloc: weatherBloc,
            builder: (context, state) {
              if(state is InitialWeatherState){
                return Center(child: Text("Şehir ismi giriniz"),);
              }
              if(state is LoadingWeatherState){
                return Center(child: CircularProgressIndicator(),);
              }
              if(state is LoadedWeatherState){


                _refreshCompleter.complete();
                _refreshCompleter = Completer();

                return RefreshIndicator(
                  onRefresh: (){
                    weatherBloc.dispatch(RefreshWeatherEvent(cityName: state.weather.title));
                    return _refreshCompleter.future;
                  },
                  child: ListView(
                    children: <Widget>[
                      Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Location(
                              selectedCity: state.weather.title,
                            ),
                          )),
                      Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: LastUpdated(),
                          )),
                      Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: WeatherImage(),
                          )),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: MaxMinTemperature(),
                        ),
                      ),


                    ],
                  ),
                );
              }
              if(state is ErrorWeatherState){
                return Center(child: Text("hata..."),);
              }

            },
          ),
        ),
      ),
    );
  }

  void _openSearchPage(BuildContext context, WeatherBloc weatherBloc) async {
    selectedCity = await Navigator.push(
        context, MaterialPageRoute(builder: (context) => SearchPage()));
    weatherBloc.dispatch(FetchWeatherEvent(cityName: selectedCity));
    debugPrint(selectedCity);
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/Blocs/Weather/weather_bloc.dart';
import 'package:weather_app/Blocs/Weather/weather_state.dart';

class MaxMinTemperature extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _weatherBloc = BlocProvider.of<WeatherBloc>(context);

    return BlocBuilder(
      bloc: _weatherBloc,
      builder: (context,state){
        LoadedWeatherState loadedWeatherState = (state as LoadedWeatherState);
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Text("Maksimum:"+loadedWeatherState.weather.consolidated_weather[0].max_temp.floor().toString()+"° C",style: TextStyle(fontSize: 24)),
            Text("Minimum:"+loadedWeatherState.weather.consolidated_weather[0].min_temp.floor().toString()+"° C",style: TextStyle(fontSize: 24)),
          ],
        );
      },

    );
  }
}
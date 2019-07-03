import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/Blocs/Weather/bloc.dart';
import 'package:weather_app/Blocs/Weather/weather_bloc.dart';

class WeatherImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _weatherBloc = BlocProvider.of<WeatherBloc>(context);
    return BlocBuilder(
      bloc: _weatherBloc,
      builder: (context, state) {
        LoadedWeatherState loadedWeatherState = (state as LoadedWeatherState);

        return Column(
          children: <Widget>[
            Text(
              loadedWeatherState.weather.consolidated_weather[0].the_temp.floor()
                  .toString()+" C",
              style: TextStyle(fontSize: 50),
            ),
            Image.network(
              "https://www.metaweather.com/static/img/weather/png/${loadedWeatherState.weather.consolidated_weather[0].weather_state_abbr}.png",
              width: 150,
              height: 150,
            )
          ],
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/Blocs/Weather/bloc.dart';
import 'package:weather_app/Blocs/Weather/weather_bloc.dart';

class LastUpdated extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final weatherBloc = BlocProvider.of<WeatherBloc>(context);
    return BlocBuilder(
      bloc: weatherBloc,
      builder: (context, state) {
        LoadedWeatherState loadedWeatherState = (state as LoadedWeatherState);
        var dataTime = DateTime.parse(loadedWeatherState.weather.time);
        //debugPrint(dataTime.toString());
        debugPrint(dataTime.toString().substring(0,dataTime.toString().indexOf('.')));
        //var exDataTime = TimeOfDay.fromDateTime(DateTime.now().toLocal()).format(context);
        //debugPrint(exDataTime.toString());
        //debugPrint(dataTime.day.toString());
        return Text(
          "Son Güncelleme:" + TimeOfDay.fromDateTime(dataTime).format(context),
          style: TextStyle(fontSize: 24, fontStyle: FontStyle.italic),
        );
      },
    );
  }
}

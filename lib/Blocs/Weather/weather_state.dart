import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:weather_app/Models/WeatherModel/Weather.dart';

@immutable
abstract class WeatherState extends Equatable {
  WeatherState([List props = const []]) : super(props);
}

class InitialWeatherState extends WeatherState {}

class LoadingWeatherState extends WeatherState {}

class LoadedWeatherState extends WeatherState{
  Weather weather;
  LoadedWeatherState({@required this.weather}):super([weather]);
}

class ErrorWeatherState extends WeatherState{}
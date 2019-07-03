import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class WeatherEvent extends Equatable {
  WeatherEvent([List props = const []]) : super(props);
}

class FetchWeatherEvent extends WeatherEvent {
  String cityName;
  FetchWeatherEvent({@required this.cityName}) : super([cityName]);
}

class RefreshWeatherEvent extends WeatherEvent {
  String cityName;
  RefreshWeatherEvent({@required this.cityName}) : super([cityName]);
}




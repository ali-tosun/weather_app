import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:weather_app/Data/WeatherRepository.dart';
import 'package:weather_app/Models/WeatherModel/Weather.dart';
import '../../Locator.dart';
import './bloc.dart';
import 'package:get_it/get_it.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final WeatherRepository _weatherRepository = locator<WeatherRepository>();

  @override
  WeatherState get initialState => InitialWeatherState();

  @override
  Stream<WeatherState> mapEventToState(
    WeatherEvent event,
  ) async* {
    if (event is FetchWeatherEvent) {
      yield LoadingWeatherState();

      try {
        //indirme işlemi..
        Weather weather = await _weatherRepository.getWeather(event.cityName);
        yield LoadedWeatherState(weather: weather);
      } catch (_) {
        yield ErrorWeatherState();
      }
    }
    else if (event is RefreshWeatherEvent) {
      try {
        //indirme işlemi..
        Weather weather = await _weatherRepository.getWeather(event.cityName);
        yield LoadedWeatherState(weather: weather);
      } catch (_) {
        yield currentState;
      }
    }

  }
}

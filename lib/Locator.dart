import 'package:get_it/get_it.dart';

import 'Data/WeatherRepository.dart';
import 'Data/weather_api_client.dart';

GetIt locator= GetIt();

void setupLocator(){
  locator.registerLazySingleton(()=>WeatherRepository());
  locator.registerLazySingleton(()=>WeatherApiClient());
}
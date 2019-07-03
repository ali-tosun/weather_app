import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:weather_app/Models/WeatherModel/Weather.dart';
class WeatherApiClient{
  static const apiUrl = "https://www.metaweather.com";
  http.Client httpClient = http.Client();

  Future<int> getLocationId(String cityName) async {
    String url = "$apiUrl/api/location/search/?query=$cityName";
    var response = await httpClient.get(url);
    if (response.statusCode != 200) {
      throw "Location Id getirilemedi";
    }

    var responseJson = jsonDecode(response.body) as List;
    return responseJson[0]["woeid"];
  }

  Future<Weather> getWeather(int locationId) async {
    String url = "$apiUrl/api/location/$locationId";
    var response = await httpClient.get(url);
    if (response.statusCode != 200) {
      throw "Location Id getirilemedi";
    }
    var responseJson = jsonDecode(response.body);
    return Weather.fromJsonMap(responseJson);
  }


}
import 'package:weather_app/Models/WeatherModel/Weather.dart';
import '../Locator.dart';
import 'weather_api_client.dart';

class WeatherRepository {
  WeatherApiClient _weatherApiClient = locator<WeatherApiClient>();

  Future<Weather> getWeather(String cityName) async {
    int cityId = await _weatherApiClient.getLocationId(cityName);
    return await _weatherApiClient.getWeather(cityId);
  }
}

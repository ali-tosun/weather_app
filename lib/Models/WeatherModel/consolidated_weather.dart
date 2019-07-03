
class Consolidated_weather {

  int id;
  String weather_state_name;
  String weather_state_abbr;
  String wind_direction_compass;
  String created;
  String applicable_date;
  double min_temp;
  double max_temp;
  double the_temp;
  double wind_speed;
  double wind_direction;
  double air_pressure;
  int humidity;
  double visibility;
  int predictability;

	Consolidated_weather.fromJsonMap(Map<String, dynamic> map): 
		id = map["id"],
		weather_state_name = map["weather_state_name"],
		weather_state_abbr = map["weather_state_abbr"],
		wind_direction_compass = map["wind_direction_compass"],
		created = map["created"],
		applicable_date = map["applicable_date"],
		min_temp = map["min_temp"],
		max_temp = map["max_temp"],
		the_temp = map["the_temp"],
		wind_speed = map["wind_speed"],
		wind_direction = map["wind_direction"],
		air_pressure = map["air_pressure"],
		humidity = map["humidity"],
		visibility = map["visibility"],
		predictability = map["predictability"];

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['id'] = id;
		data['weather_state_name'] = weather_state_name;
		data['weather_state_abbr'] = weather_state_abbr;
		data['wind_direction_compass'] = wind_direction_compass;
		data['created'] = created;
		data['applicable_date'] = applicable_date;
		data['min_temp'] = min_temp;
		data['max_temp'] = max_temp;
		data['the_temp'] = the_temp;
		data['wind_speed'] = wind_speed;
		data['wind_direction'] = wind_direction;
		data['air_pressure'] = air_pressure;
		data['humidity'] = humidity;
		data['visibility'] = visibility;
		data['predictability'] = predictability;
		return data;
	}
}

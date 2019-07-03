import 'package:weather_app/Models/WeatherModel/consolidated_weather.dart';
import 'package:weather_app/Models/WeatherModel/parent.dart';
import 'package:weather_app/Models/WeatherModel/sources.dart';

class Weather {

  List<Consolidated_weather> consolidated_weather;
  String time;
  String sun_rise;
  String sun_set;
  String timezone_name;
  Parent parent;
  List<Sources> sources;
  String title;
  String location_type;
  int woeid;
  String latt_long;
  String timezone;

	Weather.fromJsonMap(Map<String, dynamic> map): 
		consolidated_weather = List<Consolidated_weather>.from(map["consolidated_weather"].map((it) => Consolidated_weather.fromJsonMap(it))),
		time = map["time"],
		sun_rise = map["sun_rise"],
		sun_set = map["sun_set"],
		timezone_name = map["timezone_name"],
		parent = Parent.fromJsonMap(map["parent"]),
		sources = List<Sources>.from(map["sources"].map((it) => Sources.fromJsonMap(it))),
		title = map["title"],
		location_type = map["location_type"],
		woeid = map["woeid"],
		latt_long = map["latt_long"],
		timezone = map["timezone"];

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['consolidated_weather'] = consolidated_weather != null ? 
			this.consolidated_weather.map((v) => v.toJson()).toList()
			: null;
		data['time'] = time;
		data['sun_rise'] = sun_rise;
		data['sun_set'] = sun_set;
		data['timezone_name'] = timezone_name;
		data['parent'] = parent == null ? null : parent.toJson();
		data['sources'] = sources != null ? 
			this.sources.map((v) => v.toJson()).toList()
			: null;
		data['title'] = title;
		data['location_type'] = location_type;
		data['woeid'] = woeid;
		data['latt_long'] = latt_long;
		data['timezone'] = timezone;
		return data;
	}
}

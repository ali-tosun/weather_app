
class Parent {

  String title;
  String location_type;
  int woeid;
  String latt_long;

	Parent.fromJsonMap(Map<String, dynamic> map): 
		title = map["title"],
		location_type = map["location_type"],
		woeid = map["woeid"],
		latt_long = map["latt_long"];

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['title'] = title;
		data['location_type'] = location_type;
		data['woeid'] = woeid;
		data['latt_long'] = latt_long;
		return data;
	}
}


class Sources {

  String title;
  String slug;
  String url;
  int crawl_rate;

	Sources.fromJsonMap(Map<String, dynamic> map): 
		title = map["title"],
		slug = map["slug"],
		url = map["url"],
		crawl_rate = map["crawl_rate"];

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['title'] = title;
		data['slug'] = slug;
		data['url'] = url;
		data['crawl_rate'] = crawl_rate;
		return data;
	}
}

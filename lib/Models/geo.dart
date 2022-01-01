class Geo {
  late String lat;
  late String lng;

  Geo({required this.lat, required this.lng});

  Geo.fromJson(Map<String, dynamic> json) {
    lat = json['lat'];
    lng = json['lng'];
  }
}

class Coordinate{
  final double lat;
  final double lng;

  Coordinate({this.lat, this.lng,});

  factory Coordinate.fromJSON(Map<String, dynamic> json){
    return new Coordinate(
      lat: json['lat'],
      lng: json['lng'],
    );
  }
  factory Coordinate.fromMap(Map<String, dynamic> json) => Coordinate(
    lng: json["lng"].toDouble(),
    lat: json["lat"].toDouble(),
  );
  Map<String, dynamic> toJson() => {
    'lat': lat,
    'lng': lng,
  };

}
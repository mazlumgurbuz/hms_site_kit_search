import 'coordinate.dart';
import 'coordinate_bounds.dart';
import 'location_type.dart';

class QuerySuggestionRequest {
  String query;
  Coordinate location;
  int radius;
  CoordinateBounds bounds;
  List<LocationType> poiTypes;
  String countryCode;
  String language;
  String politicalView;

  QuerySuggestionRequest(this.query,{
    this.location,
    this.radius,
    this.bounds,
    this.poiTypes,
    this.countryCode,
    this.language,
    this.politicalView,
  });
  factory QuerySuggestionRequest.fromMap(Map<String, dynamic> json) => QuerySuggestionRequest(
    json["query"],
    location: Coordinate.fromMap(json["location"]),
    radius: json["radius"],
    bounds: json["bounds"],
    poiTypes: List<LocationType>.from(json['poiTypes']?.map((x) => LocationType.fromString(x))),
    countryCode: json["countryCode"],
    language: json["language"],
    politicalView: json["politicalView"],
  );


  Map<String, dynamic> toJson() {
    return {
      'query': query,
      'location': location?.toJson(),
      'radius': radius,
      'bounds': bounds,
      'poiTypes': poiTypes?.map((t) => t?.toString())?.toList(),
      'countryCode': countryCode,
      'language': language,
      'politicalView': politicalView,
    };
  }
}
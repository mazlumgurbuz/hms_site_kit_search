import 'coordinate.dart';

class KeywordRequest{
  String query;
  Coordinate location;
  int radius;
  String poiType;
  String countryCode;
  String hwPoiType;
  String language;
  int pageSize;
  int pageIndex;
  String politicalView;

  KeywordRequest(
      {this.query,
        this.location,
        this.radius,
        this.poiType,
        this.countryCode,
        this.hwPoiType,
        this.language,
        this.pageSize,
        this.pageIndex,
        this.politicalView});
  factory KeywordRequest.fromMap(Map<String, dynamic> json) => KeywordRequest(
    query: json["query"],
    location: Coordinate.fromMap(json["location"]),
    radius: json["radius"],
    hwPoiType: json["hwPoiType"],
    countryCode: json["countryCode"],
    language: json["language"],
    pageIndex: json["pageIndex"],
    pageSize: json["pageSize"],
    politicalView: json["politicalView"],
  );

  Map<String, dynamic> toJson() => {
    'location': location ==null?null :location,
    'radius': radius == null ? null : radius,
    'poiType': poiType== null ? null :poiType,
    'country': countryCode==null ? null: countryCode,
    'hwPoiType': hwPoiType== null ? null :hwPoiType,
    'query': query == null ? null :query,
    'language': language== null ? null :language,
    'pageSize': pageSize== null ? null :pageSize,
    'pageIndex': pageIndex== null ? null :pageIndex,
    'politicalView': politicalView== null ? null :politicalView
  };
}
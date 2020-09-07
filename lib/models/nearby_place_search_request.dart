import 'coordinate.dart';
class NearbyPlaceRequest{
  String query;
  Coordinate location;
  int radius;
  String poiType;
  String hwPoiType;
  String language;
  int pageSize;
  int pageIndex;
  String politicalView;

  NearbyPlaceRequest(this.location,
      {this.query,
        this.radius,
        this.poiType,
        this.hwPoiType,
        this.language,
        this.pageSize,
        this.pageIndex,
        this.politicalView});

  Map<String, dynamic> toJson() => {
    'location': location.toJson(),
    'radius': radius == null ? null : radius,
    'poiType': poiType== null ? null :poiType,
    'hwPoiType': hwPoiType== null ? null :hwPoiType,
    'query': query== null ? null :query,
    'language': language== null ? null :language,
    'pageSize': pageSize== null ? null :pageSize,
    'pageIndex': pageIndex== null ? null :pageIndex,
    'politicalView': politicalView== null ? null :politicalView
  };
}
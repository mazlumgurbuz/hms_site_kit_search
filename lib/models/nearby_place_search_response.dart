import 'site.dart';
class NearbyPlaceResponse{
  final String returnCode;
  final String returnDesc;
  final int totalCount;
  final List<Site> sites;

  NearbyPlaceResponse({this.returnCode, this.returnDesc, this.totalCount, this.sites});

  factory NearbyPlaceResponse.fromJson(Map<String, dynamic> json){
    var list = json['sites'] as List;
    List<Site> siteList = list.map((site) => Site.fromJSON(site)).toList();
    return new NearbyPlaceResponse(
        returnCode: json['returnCode'],
        returnDesc: json['returnDesc'],
        totalCount: json['totalCount'],
        sites: siteList
    );
  }
}
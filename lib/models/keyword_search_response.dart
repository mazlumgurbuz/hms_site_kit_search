import 'package:hms_site_kit_search/models/site.dart';
class KeywordResponse{
  final String returnCode;
  final String returnDesc;
  final int totalCount;
  final List<Site> sites;

  KeywordResponse({this.returnCode, this.returnDesc, this.totalCount, this.sites});

  factory KeywordResponse.fromJson(Map<String, dynamic> json){
    var list = json['sites'] as List;
    List<Site> siteList = list.map((site) => Site.fromJSON(site)).toList();
    return new KeywordResponse(
        returnCode: json['returnCode'],
        returnDesc: json['returnDesc'],
        totalCount: json['totalCount'],
        sites: siteList
    );
  }
}
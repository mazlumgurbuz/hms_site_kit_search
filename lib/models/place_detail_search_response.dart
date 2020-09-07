import 'site.dart';
class DetailSearchResponse{
  final String returnCode;
  final String returnDesc;
  final Site sites;

  DetailSearchResponse({this.returnCode, this.returnDesc,  this.sites});
  factory DetailSearchResponse.fromJson(Map<String,dynamic> json){
    return new DetailSearchResponse(
        returnCode: json['returnCode'],
        returnDesc: json['returnDesc'],
        sites: Site.fromJSON(json['site']),
    );
  }

  @override
  String toString() {
    return 'DetailSearchResponse{returnCode: $returnCode, returnDesc: $returnDesc, sites: $sites}';
  }
}
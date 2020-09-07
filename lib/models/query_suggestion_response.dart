import 'site.dart';

class QuerySuggestionResponse {
  final String returnCode;
  final String returnDesc;
  final List<Site> sites;

  QuerySuggestionResponse ({this.returnCode, this.returnDesc,  this.sites});
  factory QuerySuggestionResponse .fromJson(Map<String,dynamic> json){
    var list = json['sites'] as List;
    List<Site> sitelist = list.map((i) => Site.fromJSON(i)).toList();
    return new QuerySuggestionResponse (
      returnCode: json['returnCode'],
      returnDesc: json['returnDesc'],
      sites:sitelist,
    );
  }

  @override
  String toString() {
    return 'DetailSearchResponse{returnCode: $returnCode, returnDesc: $returnDesc, sites: $sites}';
  }
}
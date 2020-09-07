import 'coordinate.dart';

class DetailSearchRequest{
  String siteId;
  String language;
  String politicalView;

  DetailSearchRequest({this.siteId, this.language, this.politicalView});
  factory DetailSearchRequest.fromMap(Map<String, dynamic> json) => DetailSearchRequest(
    siteId: json["siteId"],
    language: json["language"],
    politicalView: json["politicalView"],
  );

  Map<String, dynamic> toJson() => {
    'siteId': siteId == null ? null :siteId,
    'language': language== null ? null :language,
    'politicalView': politicalView== null ? null :politicalView
  };
}
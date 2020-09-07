class Poi{
  final List<String> poiTypes;
  final List<String> hwPoiTypes;
  final String phone;
  final String internationalPhone;
  final double rating;
  final String webSiteUrl;
  final List<String> photoUrls;

  Poi(this.poiTypes, this.hwPoiTypes, {this.phone, this.internationalPhone, this.rating, this.webSiteUrl, this.photoUrls});

  factory Poi.fromJSON(Map<String, dynamic> json){
    return new Poi(
        json['poiTypes'].cast<String>(),
        json['hwPoiTypes'].cast<String>(),
        phone: json['phone'],
        internationalPhone: json['internationalPhone'],
        rating: json['rating'],
        webSiteUrl: json['webSiteUrl'],
        photoUrls: json['photoUrls'] as List<String>
    );
  }
}
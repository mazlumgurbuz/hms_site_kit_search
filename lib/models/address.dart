class Address{
  final String countryCode;
  final String country;
  final String state;
  final String county;
  final String town;
  final String settlement;

  Address({this.countryCode, this.country, this. state, this.county, this.town, this.settlement});
  factory Address.fromJSON(Map<String, dynamic> json){
    return new Address(
        countryCode: json['countryCode'],
        country: json['country'],
        state: json['state'],
        county: json['county'],
        town: json['town'],
        settlement: json['settlement']
    );
  }
}
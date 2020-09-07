class AddressDetail {
  final String countryCode;
  final String country;
  final String adminArea;
  final String subAdminArea;
  final String locality;
  final String subLocality;
  final String streetNumber;
  final String thoroughfare;
  final String postalCode;

  AddressDetail(
      {this.countryCode,
        this.country,
        this.adminArea,
        this.subAdminArea,
        this.locality,
        this.subLocality,
        this.streetNumber,
        this.thoroughfare,
        this.postalCode});

  factory AddressDetail.fromJSON(Map<String, dynamic> json){
    return new AddressDetail(
        countryCode: json['countryCode'],
        country: json['country'],
        adminArea: json['adminArea'],
        subAdminArea: json['subAdminArea'],
        locality: json['locality'],
        subLocality: json['subLocality'],
        streetNumber: json['streetNumber'],
        thoroughfare: json['thoroughfare'],
        postalCode: json['postalCode']
    );
  }
}
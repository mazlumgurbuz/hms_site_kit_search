import 'coordinate.dart';
import 'address_detail.dart';
import 'coordinate_bounds.dart';
import 'poi.dart';

class Site {
  final String siteId;
  final String name;
  final String formatAddress;
  final AddressDetail address;
  final Coordinate location;
  final CoordinateBounds viewport;
  final double distance;
  final Poi poi;

  Site(this.siteId, this.formatAddress, this.address,
      {this.location, this.name, this.viewport, this.distance, this.poi});

  factory Site.fromJSON(Map<String, dynamic> json) {
    return new Site(json['siteId'], json['formatAddress'],
        AddressDetail.fromJSON(json['address']),
        location: Coordinate.fromJSON(json['location']),
        name: json['name'],
        viewport: json["viewport"] == null ? null : CoordinateBounds.fromJSON(json["viewport"]),
        distance: json['distance'],
        poi: Poi.fromJSON(json['poi']));
  }

  @override
  String toString() {
    return 'Site{siteId: $siteId, name: $name, formatAddress: $formatAddress, address: $address, location: $location, viewport: $viewport, distance: $distance, poi: $poi}';
  }
}

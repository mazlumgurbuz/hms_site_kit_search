import 'coordinate.dart';
class CoordinateBounds{
  final Coordinate northeast;
  final Coordinate southwest;

  CoordinateBounds(this.northeast, this.southwest);

  factory CoordinateBounds.fromJSON(Map<String, dynamic> json){
    return new CoordinateBounds(Coordinate.fromJSON(json['northeast']), Coordinate.fromJSON(json['southwest']));
  }

  @override
  String toString() {
    return 'CoordinateBounds{northeast: $northeast, southwest: $southwest}';
  }
}
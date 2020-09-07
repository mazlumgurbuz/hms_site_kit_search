import 'time_of_week.dart';

class Period{
  final TimeOfWeek open;
  final TimeOfWeek close;

  Period(this.open, {this.close});

  factory Period.fromJSON(Map<String, dynamic> json){
    return new Period(
        TimeOfWeek.fromJSON(json['open']),
        close: TimeOfWeek.fromJSON(json['close'])
    );
  }
}
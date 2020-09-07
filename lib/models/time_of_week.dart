class TimeOfWeek{
  final int week;
  final String time;

  TimeOfWeek(this.week, this.time);

  factory TimeOfWeek.fromJSON(Map<String, dynamic> json){
    return new TimeOfWeek(
        json['week'],
        json['time']
    );
  }

  @override
  String toString() {
    return 'TimeOfWeek{week: $week, time: $time}';
  }
}
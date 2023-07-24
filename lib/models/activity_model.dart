class ReminderInfo {
  int id;
  String tittle;
  DateTime reminderDateTime;
  bool isPending;
  ReminderInfo({
    required this.id,
    required this.tittle,
    required this.reminderDateTime,
    required this.isPending,
  });

  factory ReminderInfo.fromJson(Map<String, dynamic> json) => ReminderInfo(
        id: json["id"],
        tittle: json["tittle"],
        reminderDateTime: DateTime.parse(json["reminderDateTime"]),
        isPending: json["isPending"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "tittle": tittle,
        "reminderDateTime": reminderDateTime.toIso8601String(),
        "isPending": isPending,
      };
}

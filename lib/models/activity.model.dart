class Activity {
  int id;
  String name;
  String description;
  DateTime dateTime;
  int itemId;

  Activity(
      {required this.id,
      required this.name,
      required this.description,
      required this.dateTime,
      required this.itemId});

  static List<Activity> getActivitiesForItem(activities, int itemId) {
    return activities.where((activity) => activity.itemId == itemId).toList();
  }
}

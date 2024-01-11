enum Gender {
  male,
  female,
}

enum ActivityLevel {
  regular,
  occasionally,
  rarely,
}

class User {
  String name;
  int age;
  Gender gender;
  bool hasHeartDisease;
  bool eatsRegularly;
  ActivityLevel activityLevel;

  User({
    required this.name,
    required this.age,
    required this.gender,
    required this.hasHeartDisease,
    required this.eatsRegularly,
    required this.activityLevel,
  });
}

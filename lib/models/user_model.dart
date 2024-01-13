import 'package:cloud_firestore/cloud_firestore.dart';

enum Gender {
  male,
  female,
}

enum ActivityLevel {
  regular,
  occasionally,
  rarely,
}

class UserModel {
  String name;
  int age;
  Gender gender;
  bool hasHeartDisease;
  bool eatsRegularly;
  ActivityLevel activityLevel;

  UserModel({
    required this.name,
    required this.age,
    required this.gender,
    required this.hasHeartDisease,
    required this.eatsRegularly,
    required this.activityLevel,
  });

  // factory UserModel.fromFirestore(DocumentSnapshot<Map<String, dynamic>> snapshot,
  //   SnapshotOptions? options){
  //   return UserModel(name: name, age: age, gender: gender, hasHeartDisease: hasHeartDisease, eatsRegularly: eatsRegularly, activityLevel: activityLevel)
  // }
}

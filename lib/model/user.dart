import 'package:cloud_firestore/cloud_firestore.dart';

class UserData {
  String name;
  String email;
  String password;
  String uid;
  UserData(
      {required this.name,
      required this.email,
      required this.password,
      required this.uid});
  Map<String, dynamic> toJson() =>
      {"name": name, "email": email, "password": password, "uid": uid};
  static UserData fromSnap(DocumentSnapshot snap) {
    var snapShot = snap.data() as Map<String, dynamic>;
    return UserData(
        name: snapShot["name"],
        password: snapShot["password"],
        email: snapShot["email"],
        uid: snapShot["uid"]);
  }
}

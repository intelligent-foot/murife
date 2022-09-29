import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  final String? uid;
  DatabaseService({this.uid});

// reference for our collections
  final CollectionReference userCollection =
      FirebaseFirestore.instance.collection("users");

  //updating the userdata
  Future updateUserData(String userName, String email) async {
    return await userCollection.doc(uid).set({
      "userName": userName,
      "email": email,
      "uid": uid,
    });
  }
// 



}

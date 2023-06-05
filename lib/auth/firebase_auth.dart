import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Auth {
  static CollectionReference userReference =
      FirebaseFirestore.instance.collection("users");
  static Future<bool> signupUser({
    required String email,
    required String name,
    required String password,
  }) async {
    bool status = false;
    try {
      final credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      User? currentUser = credential.user;
      if (currentUser != null) {
        DocumentReference currentUserReference =
            userReference.doc(currentUser.uid);
        Map<String, dynamic> userProfileData = {
          "name": name,
          "email": email,
          "uid": currentUser.uid
        };
        currentUserReference.set(userProfileData);
      }

      status = true;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
    print(status);

    return status;
  }

  static Future<bool> loginUser({
    required String email,
    required String password,
  }) async {
    bool status = false;
    try {
      final credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);

      User? currentUser = credential.user;
      status = true;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }
    return status;
  }
}

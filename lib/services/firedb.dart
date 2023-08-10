import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FireDB{

final FirebaseAuth _auth = FirebaseAuth.instance;

  createNewUser(String name, String email, String mobile, String photoUrl,String uid) async {
    final User? currentUser = _auth.currentUser;

    await FirebaseFirestore.instance.collection('user').doc(currentUser!.uid).set(
      {
      "name":name,
      "email":email,
      "photo":photoUrl,
      "mobile":mobile,
      "money":"5000",
      "uid": currentUser.uid,
    }
    ).then((value) => "User Registered Successfully")
    ;
  }

  
  


  } 
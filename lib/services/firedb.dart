import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';

class FireDB{

final FirebaseAuth _auth = FirebaseAuth.instance;

  createNewUser(String name, String email, String mobile, String photoUrl,String uid) async {
    final User? currentUser = _auth.currentUser;

    if(await getUser()){
      debugPrint("user already exists");
    }else{
      await FirebaseFirestore.instance
          .collection('users')
          .doc(currentUser!.uid)
          .set({
        "name": name,
        "email": email,
        "photo": photoUrl,
        "mobile": mobile,
        "money": "50000",
        "uid": currentUser.uid,
      }).then((value) => "User Registered Successfully");
    }

    
  }

  Future<bool> getUser() async{
    final User? currentUser = _auth.currentUser;

    String user = "";
    await FirebaseFirestore.instance.collection('users').doc(currentUser!.uid).get().then((value) {
      user = value.data().toString();
    });

    if(user.toString() == "null"){
      return false;
    }else{
      return true;
    }

  }

  
  


  } 
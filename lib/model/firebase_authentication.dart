/*import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fest/entity/user.dart';
import 'package:fluttertoast/fluttertoast.dart';

class fireBase {
  Future<void> resetPassword(var email, BuildContext context) async {
    FirebaseAuth auth = FirebaseAuth.instance;
    await auth.sendPasswordResetEmail(email: email);
  }

  Future<void> retiveData(List postList) async {
    final dataref =
        FirebaseDatabase.instance.reference().child("Posts").child("id");
    dataref.once().then((DataSnapshot snap) {
      var KEYS = snap.value.keys;
      var DATA = snap.value;
      postList.clear();
      print('Data : ${snap.value}');

      for (var key in KEYS) {
        Posts posts = new Posts(
          DATA[key]['date'],
          DATA[key]['descriptions'],
          DATA[key]['hospital'],
          DATA[key]['time'],
        );
        postList.add(posts);
      }
      print(postList);
    });
  }

  Future<void> addUser() async {
    FirebaseAuth auth = FirebaseAuth.instance;
    final databaseReference = FirebaseDatabase.instance.reference();
    var uid;
    databaseReference.child("User").child(auth.currentUser.uid).set({
      'name': 'Onur',
      'Surname': 'Sarı',
      'Age': '21',
      'birth': '11.02.2000',
      'blood_Gruop': 'AB+'
    });
  }

  void Add() {}

  void Delete() {}

  Future<void> changePassword(
      var currentPass, var newPassword, BuildContext context) async {
    if (currentPass == newPassword) {
      final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
      User currentUser = firebaseAuth.currentUser;
      currentUser.updatePassword(newPassword).then((_) {
        print("Successfully changed password");
        Fluttertoast.showToast(msg: "Şifre Başarıyla Değiştirildi.");
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ProfileScreen()),
        );
      }).catchError((error) {
        print("Password can't be changed" + error.toString());
        //This might happen, when the wrong password is in, the user isn't found, or if the user hasn't logged in recently.
      });
    }
  }

  int update() {}

//Login kısmı buradan
  Future<void> login(var _email, var _password, BuildContext context) async {
    if (_email == Null || _password == Null) {
      print("Email veya şifre boş");
      Fluttertoast.showToast(msg: "Please Enter E-mail or Password");
    } else {
      print("email:$_email, password:$_password");
      try {
        UserCredential userCredential = await FirebaseAuth.instance
            .signInWithEmailAndPassword(email: _email, password: _password);
      } on FirebaseAuthException catch (e) {
        if (e.code == 'user-not-found') {
          print('No user found for that email.');
          Fluttertoast.showToast(msg: "No user found for that email.");
        } else if (e.code == 'wrong-password') {
          print('Wrong password provided for that user.');
          Fluttertoast.showToast(msg: "Wrong E-mail or Password.");
        }
      }
      FirebaseAuth.instance.authStateChanges().listen((User user) {
        if (user == null) {
          print('User is currently signed out!');
        } else if (user.email == _email) {
          print('User is signed in!');
          Fluttertoast.showToast(msg: "Signed in!");
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Anasayfa()),
          );
        }
      });
    }
  }

  Future<void> register(var _email, var _password, BuildContext context) async {
    FirebaseAuth auth = FirebaseAuth.instance;
    FirebaseApp secondaryApp = await Firebase.initializeApp();
    auth = FirebaseAuth.instanceFor(app: secondaryApp);
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: _email, password: _password);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
    //Kayıt doğrulama
    FirebaseAuth.instance.authStateChanges().listen((User user) {
      if (user.email == _email) {
        Fluttertoast.showToast(msg: "Kayıt işlemi başarılı");

        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Login()),
        );

        //Anasayfaya yönlendirme

      } else {
        print('User is signed in!');
        Fluttertoast.showToast(msg: "Kayıt işlemi başarısız.");
      }
    });

    print("email:$_email, password:$_password");
  }

  void exit(BuildContext context) {
    FirebaseAuth.instance.signOut();
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Login()),
    );
  }
}

class Posts {
  Posts(data, data2, data3, data4);
}
*/
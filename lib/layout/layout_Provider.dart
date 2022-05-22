import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:final_pro/components.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import '../model/user_model.dart';

import 'layout.dart';

class LyoutProvider extends ChangeNotifier {
  int currantPageIndex = 0;
  void changeBottomNavigationBar(int index, context) {
    currantPageIndex = index;
    notifyListeners();
  }

  void userLogin(
      {required String email, required String password, required context}) {
    FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password)
        .then((value) {
      getUserData(value.user!.uid);
      naviagtTofinish(context, Layout());

      notifyListeners();
    }).catchError((erorr) {
      print(erorr.toString());
      notifyListeners();
    });
  }

  void userRegister(
      {required String name,
      required  String email,
      required String password,
      required String phone,
      required context}) {
    FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password)
        .then((value) {
      print(value.user!.email);
      print(value.user!.uid);
      createUser(
        name: name,
        email: email,
        uId: value.user!.uid,
        phone: phone,
      );
      getUserData(value.user!.uid);

      naviagtTofinish(context, Layout());
      notifyListeners();
    }).catchError((erorr) {
      print(erorr.toString());
      notifyListeners();
    });
  }

  void createUser({
    required String name,
    required String email,
    required String uId,
    required String phone,
  }) {
    UserModel model = UserModel(
      email: email,
      name: name,
      phone: phone,
      uId: uId,
    );
    FirebaseFirestore.instance
        .collection('users')
        .doc(uId)
        .set(model.toMap())
        .then((value) {
      notifyListeners();
    }).catchError((error) {
      print(error.toString());
    });
    notifyListeners();
  }

  void getUserData( String uId) {
    FirebaseFirestore.instance.collection('users').doc(uId).get().then(
      (value) {
        userModel = UserModel.fromJson(value.data());
        print(userModel!.name);
        print(userModel!.email);
        print(userModel!.uId);

        notifyListeners();
      },
    ).catchError(
      (error) {
        print(error.toString());
        notifyListeners();
      },
    );
    notifyListeners();
  }
}

UserModel? userModel;

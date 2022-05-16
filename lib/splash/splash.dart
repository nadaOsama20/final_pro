import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '/components.dart';
import '/login/login.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(225, 93, 130, 244),
        body: Align(
          alignment: Alignment.center,
          child: InkWell(
            onTap: () => naviagtTo(context, LoginPage()),
            child: Image.asset(
              'assets/images/logo.png',
              height: 120,
              alignment: Alignment.center,
            ),
          ),
        ));
  }
}

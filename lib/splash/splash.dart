import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '/components.dart';
import '/login/login.dart';

class Splash extends StatelessWidget {
  Timer? timer;
  startDelay(context) {
    timer = Timer(Duration(seconds: 2), _goNext(context));
  }

  _goNext(context) {
    naviagtTo(context, LoginPage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(225, 93, 130, 244),
      body: Builder(builder: (context) {
        startDelay(context);
        return Align(
          alignment: Alignment.center,
          child: Image.asset(
            'assets/images/logo.png',
            height: 120,
            alignment: Alignment.center,
          ),
        );
      }),
    );
  }
}

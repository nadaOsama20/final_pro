// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../components.dart';

class PErsonPage extends StatelessWidget {
  PErsonPage({Key? key}) : super(key: key);
  var formKey = GlobalKey<FormState>();
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var phoneController = TextEditingController();
  var loginController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('الملف الشخصي'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Container(
              height: 240,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            'assets/images/nada.jpg',
                          ),
                        ),
                      ),
                    ),
                  ),
                  CircleAvatar(
                    radius: 65,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 60,
                      backgroundImage: AssetImage('assets/images/nada.jpg'),
                    ),
                  )
                ],
              ),
            ),
          ),
          Text(
            'ندى',
            style: Theme.of(context).textTheme.headline6,
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            'اسامة',
            style: Theme.of(context).textTheme.caption,
          ),
          SizedBox(
            height: 20,
          ),
          textfield(
            radius: 50,
            controller: nameController,
            inputType: TextInputType.name,
            validate: (String value) {
              if (value.isEmpty) {
                return 'please enter your name';
              }
            },
            text: 'User Name',
            prefix: Icons.person,
          ),
          SizedBox(
            height: 40.0,
          ),
          textfield(
            radius: 50,
            controller: emailController,
            inputType: TextInputType.emailAddress,
            validate: (String value) {
              if (value.isEmpty) {
                return 'please enter your email address';
              }
            },
            text: 'Email Address',
            prefix: Icons.email_outlined,
          ),
          SizedBox(
            height: 40.0,
          ),
          textfield(
            radius: 50,
            controller: phoneController,
            inputType: TextInputType.phone,
            validate: (String value) {
              if (value.isEmpty) {
                return 'please enter your phone number';
              }
            },
            text: 'Phone',
            prefix: Icons.phone,
          ),
        ]),
      ),
    );
  }
}

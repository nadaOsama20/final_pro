// ignore_for_file: prefer_const_constructors

import 'package:final_pro/login/login.dart';
import 'package:final_pro/model/user_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components.dart';
import '../layout/layout_Provider.dart';

class PErsonPage extends StatelessWidget {
  PErsonPage({Key? key}) : super(key: key);
  var formKey = GlobalKey<FormState>();

  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<LyoutProvider>(context);
    nameController.text = userModel!.name!;
    emailController.text = userModel!.email!;
    phoneController.text = userModel!.phone!;

    return Scaffold(
      appBar: AppBar(
        title: Text('الملف الشخصي'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
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
              "${userModel!.name}",
              style: Theme.of(context).textTheme.headline6,
            ),
            SizedBox(
              height: 15,
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
              readOnly: true,
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
              readOnly: true,
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
              readOnly: true,
              text: 'Phone',
              prefix: Icons.phone,
            ),
            SizedBox(
              height: 40,
            ),
            defaultButton(function: () {
              naviagtTofinish(context, LoginPage());
            }, text: "Sign Out", radius: 20),
          ]),
        ),
      ),
    );
  }
}

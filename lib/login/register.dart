// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components.dart';
import '../layout/layout_Provider.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({Key? key}) : super(key: key);
  var formKey = GlobalKey<FormState>();
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var phoneController = TextEditingController();
  var loginController = PageController();
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<LyoutProvider>(context);

    return Scaffold(
      appBar: AppBar(
        titleSpacing: -15,
        title: Text(
          'SGIN IN',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Creat New Account',
                    style: Theme.of(context).textTheme.headline4!.copyWith(
                          color: Colors.black,
                        ),
                  ),
                  SizedBox(
                    height: 40.0,
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
                    controller: passwordController,
                    inputType: TextInputType.visiblePassword,
                    text: 'Password',
                    validate: (String value) {
                      if (value.isEmpty) {
                        return 'please enter your password';
                      }
                    },
                    prefix: Icons.lock_outline,
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
                  SizedBox(
                    height: 40.0,
                  ),
                  defaultButton(
                    radius: 50,
                    function: () {
                      if (formKey.currentState!.validate()) {
                        provider.userRegister(
                            name: nameController.text,
                            email: emailController.text,
                            password: passwordController.text,
                            phone: phoneController.text,
                            context: context);
                      }
                    },
                    text: 'SIGN Up',
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

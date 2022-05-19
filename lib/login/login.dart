import 'package:final_pro/layout/layout_Provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import '/layout/layout.dart';
import '/login/register.dart';

import '../components.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);
  var loginController = PageController();
  var emailController = TextEditingController();
  var passController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<LyoutProvider>(context);
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Welcome',
                    style: TextStyle(
                        fontSize: 40,
                        fontFamily: 'Merienda',
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Login now to browse',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey[600],
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  textfield(
                      controller: emailController,
                      radius: 50,
                      validate: (String value) {
                        if (value.isEmpty) {
                          return 'Please Enter Email';
                        }
                        return null;
                      },
                      inputType: TextInputType.emailAddress,
                      text: 'Email',
                      prefix: Icons.email),
                  SizedBox(
                    height: 40,
                  ),
                  textfield(
                      radius: 50,
                      controller: passController,
                      validate: (String value) {
                        if (value.isEmpty) {
                          return 'Please Enter password';
                        }
                        return null;
                      },
                      inputType: TextInputType.text,
                      text: 'Password',
                      prefix: Icons.lock),
                  SizedBox(
                    height: 50,
                  ),
                  defaultButton(
                    radius: 50,
                    function: () {
                      if (formKey.currentState!.validate()) {
                        provider.userLogin(
                            context: context,
                            email: emailController.text,
                            password: passController.text);
                            
                      }
                    },
                    text: 'SIGN IN',
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don\'t have an accont?',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                      TextButton(
                        onPressed: () {
                          naviagtTo(context, RegisterPage());
                        },
                        child: Text('SGIN UP'),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

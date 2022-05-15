import 'package:flutter/material.dart';

import '../components.dart';

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
    return Scaffold(
      appBar: AppBar(
        titleSpacing: -15,
        title: TextButton(
          child: Text(
            'SGIN IN',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.grey[800]),
          ),
          onPressed: () {
            // naviagtTofinish(context, ShopLoginSecreen());
          },
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
                  // Text(
                  //   'Register now to browse our hot offers',
                  //   style: Theme.of(context).textTheme.bodyText1.copyWith(
                  //     color: Colors.grey,
                  //   ),
                  // ),
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

                    onSubmit: (value) {},

                    // validate: (String value) {
                    //   if (value.isEmpty) {
                    //     return 'password is too short';
                    //   }
                    // },
                    text: 'Password',
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
                    function: () {},
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

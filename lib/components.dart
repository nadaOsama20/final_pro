import 'package:flutter/material.dart';

Widget textfield(
        {required TextEditingController controller,
        required Function validate,
        required TextInputType inputType,
        required String text,
        required IconData prefix,
        IconData? suffixIcon,
        Function? suffixPress,
        bool isPassword = false,
        double radius = 0.0,
        bool? readOnly = false}) =>
    TextFormField(
      controller: controller,
      validator: (value) => validate(value),
      obscureText: isPassword,
      keyboardType: inputType,
      readOnly: readOnly!,
      decoration: InputDecoration(
        labelText: text,
        prefixIcon: Icon(prefix),
        suffixIcon: suffixIcon != null
            ? IconButton(icon: Icon(suffixIcon), onPressed: suffixPress!())
            : null,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius),
        ),
      ),
    );
Widget defaultButton({
  double width = double.infinity,
  Color background = Colors.blue,
  required Function function,
  required String text,
  bool isUpper = true,
  double radius = 0.0,
}) =>
    Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadiusDirectional.circular(radius),
        color: background,
      ),
      width: width,
      child: MaterialButton(
        onPressed: () => function(),
        child: Text(
          isUpper ? text.toUpperCase() : text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
    );
void naviagtTo(context, Widget) => Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Widget),
    );
void naviagtTofinish(context, widget) => Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
      (route) {
        return false;
      },
    );

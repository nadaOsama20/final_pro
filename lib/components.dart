import 'package:flutter/material.dart';

Widget textfield({
  required TextEditingController controller,
  Function? validate,
  Function? onChange,
  Function? onSubmit,
  required TextInputType inputType,
  required String text,
  required IconData prefix,
  IconData? suffixIcon,
  Function? suffixPress,
  bool isPassword = false,
  double radius = 0.0,
  Function? onTapFunc,
}) =>


    TextFormField(
      onTap: () => onTapFunc!,
      controller: controller,
      // validator: validate!(),
      // onChanged: onChange!(),
      // onFieldSubmitted: onSubmit!(),
      obscureText: isPassword,
      keyboardType: inputType,
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

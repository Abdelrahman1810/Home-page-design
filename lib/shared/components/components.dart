import 'package:flutter/material.dart';

Widget commonButton({
  required Function? function,
  required String text,
  double radius = 5,
  double height = 50,
  double width = double.infinity,
  double fontsize = 25.0,
  double border = 0.0,
  fontWeight,
  Color color = Colors.black,
  Color textcolor = Colors.amber,
}) =>
    Container(
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(radius),
          border: Border.all(
            color: textcolor,
            width: border,
          )),
      height: height,
      width: width,
      child: MaterialButton(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius),
        ),
        color: color,
        splashColor: color,
        onPressed: function ?? nullable(),
        child: Text(
          text,
          style: TextStyle(
            fontWeight: fontWeight,
            fontSize: fontsize,
            color: textcolor,
          ),
        ),
      ),
    );

Widget iconSocialmedia({
  Color color = Colors.amber,
  String url = 'assets/Error-512.webp',
  double height = 40,
  double width = 40,
}) =>
    MaterialButton(
      elevation: 0,
      highlightColor: color,
      hoverColor: color,
      shape: const CircleBorder(),
      color: Colors.amber,
      onPressed: () {},
      child: Image(
        image: AssetImage(url),
        height: height,
        width: width,
      ),
    );

Widget textField({
  keyboardType,
  final controller,
  required String hinttext,
  required suffixIcon,
  onChange,
  bool isPassword = false,
  bool isPasswordVisible = false,
}) =>
    SizedBox(
      width: double.infinity,
      child: TextFormField(
        controller: controller,
        keyboardType: keyboardType,
        onChanged: onChange,
        validator: (value) {
          if (isPassword & (value!.length < 8)) {
            return 'must be at lest 8 character';
          } else if (value.isEmpty) {
            return 'Cannot be empty';
          }
          return null;
        },
        decoration: InputDecoration(
          hintText: hinttext,
          hintStyle: const TextStyle(color: Colors.black),
          suffixIcon: suffixIcon,
          errorBorder: const OutlineInputBorder(
            borderSide: BorderSide(width: 2, color: Colors.red),
          ),
          focusedErrorBorder: const OutlineInputBorder(
            borderSide: BorderSide(width: 2, color: Colors.red),
          ),
          errorStyle:
          const TextStyle(fontSize: 15.0, fontWeight: FontWeight.w400),
          enabledBorder: const OutlineInputBorder(
            // borderRadius: BorderRadius.circular(20.0),
            borderSide: BorderSide(width: 3, color: Colors.black),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white, width: 3.0),
          ),
        ),
        textInputAction: TextInputAction.done,
        obscureText: isPasswordVisible,
      ),
    );

nullable() {}

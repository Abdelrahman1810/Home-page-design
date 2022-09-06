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
}) =>
    SizedBox(
      width: double.infinity,
      child: TextFormField(
        controller: controller,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          hintText: hinttext,
          hintStyle: const TextStyle(color: Colors.black),
          suffixIcon: controller.text.isEmpty
              ? Container(width: 0)
              : IconButton(
                  icon:
                      const Icon(Icons.close, size: 20.0, color: Colors.black),
                  onPressed: () => controller.clear(),
                ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(width: 3, color: Colors.black),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white, width: 3.0),
          ),
        ),
        textInputAction: TextInputAction.done,
      ),
    );

nullable() {}

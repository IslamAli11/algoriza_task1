import 'package:algoriza_task1/models/boarding_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

defaultTextStyle({
  FontWeight? fontWeight,
  double? fontSize,
  String? fontFamily,
  Color? textColor,
}) =>
    TextStyle(
      fontWeight: fontWeight,
      fontSize: fontSize,
      fontFamily: fontFamily,
      color: textColor,
    );

navigateAndRemove(BuildContext context, Widget widget) =>
    Navigator.pushAndRemoveUntil(context,
        MaterialPageRoute(builder: (context) => widget), (route) => false);

Widget defaultOutlineButton({
  required String text,
}) =>
    Container(
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Colors.blue, width: 1)),
      child: OutlinedButton(
          clipBehavior: Clip.antiAlias,
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage('assets/images/icons8-google-48 (1).png'),
                width: 25,
                height: 25,
              ),
              const SizedBox(
                width: 5,
              ),
              Text(text),
            ],
          )),
    );

class DefaultTextButton extends StatelessWidget {
  DefaultTextButton(
      {required this.fontSize,
      required this.color,
      required this.text,
      required this.onPressed,
      required this.height,
      required this.width,
      this.fontWeight,
      required this.textColor,
      required this.radius,
      Key? key})
      : super(key: key);
  String text;
  Function onPressed;
  Color textColor;
  Color color;
  double fontSize;
  FontWeight? fontWeight;
  double width = double.infinity;
  double height = 40;
  double radius = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.circular(radius)),
      child: TextButton(
        onPressed: () {
          onPressed();
        },
        child: Text(
          text,
          style: TextStyle(
            fontSize: fontSize,
            color: textColor,
            fontWeight: fontWeight,
          ),
        ),
      ),
    );
  }
}

class DefaultTextField extends StatelessWidget {
  DefaultTextField(

      {this.keyboard,
      this.prefixIcon,
      this.controller,
      this.validator,
      this.hintText,
        this.obscureText,
        this.suffixIcon,
      Key? key})
      : super(key: key);
  String? hintText;
  String? validator;
  TextEditingController? controller;
  Widget? prefixIcon;
  Widget? suffixIcon;
  TextInputType? keyboard;
  bool? obscureText ;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText!,
      keyboardType: keyboard,
      controller: controller,
      validator: (String? value) {
        if (value!.isEmpty) {
          return validator;
        }
      },
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        hintStyle: TextStyle(color: Colors.grey),
        hintText: hintText,
        suffixIcon: suffixIcon,
        enabledBorder: OutlineInputBorder(),
        border: OutlineInputBorder(),
      ),
    );
  }
}

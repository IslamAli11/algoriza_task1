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

navigateAndRemove(BuildContext context, Widget widget) => Navigator.pushAndRemoveUntil(
    context, MaterialPageRoute(builder: (context) => widget), (route) => false);

class DefaultTextButton extends StatelessWidget {
  DefaultTextButton(
      {required this.fontSize,
      this.color,
      required this.text,
      required this.onPressed,
      this.height,
      this.width,
      this.fontWeight,
      this.textColor,
      this.radius,
      Key? key})
      : super(key: key);
  String text;
  Function onPressed;
  Color? textColor;
  Color? color;
  double fontSize;
  FontWeight? fontWeight;
  double? width;
  double? height;
  double? radius;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.circular(radius!)),
      child: TextButton(
        onPressed: () {},
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

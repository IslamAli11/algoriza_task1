import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Center(

            child: Container(
                constraints: BoxConstraints.expand(),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/clip-1632.png"),
                        fit: BoxFit.cover)
                ),
                child: Center(child: Text('Set Full Screen Background Image in Flutter',
                  textAlign: TextAlign.center, style:
                  TextStyle(color: Colors.brown, fontSize: 25, fontWeight: FontWeight.bold),),)
            )
        )
    );

  }
}

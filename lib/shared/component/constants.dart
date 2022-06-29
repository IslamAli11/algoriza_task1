import 'package:algoriza_task1/models/boarding_model.dart';
import 'package:algoriza_task1/shared/component/component.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

List<BoardingModel> boarding = [
  BoardingModel(
    image: 'assets/images/onboarding1.png',
    title: 'Get food delivery to your doorstep asap',
    body:
        'We have young and professional delivery team that will bring your food as soon as possible to your doorstep',
  ),
  BoardingModel(
    image: 'assets/images/onboarding 2.png',
    title: 'Buy Any Food from your favorite restaurant',
    body:
        'We are constantly adding your favourite restaurant throughout the territory and around your area carefully selected',
  ),
  BoardingModel(
      image: 'assets/images/sammy-done.png',
      title: 'Buy now from your favourite restaurant ',
      body: 'Bring your food from any place ')
];

class BoardingItem extends StatelessWidget {
  BoardingItem({ Key? key, required this.model}) : super(key: key);
 final BoardingModel model;


  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Image(
          image: AssetImage(model.image),
          width: double.infinity,
          height: height* .35,
          fit: BoxFit.fill,
        ),
        Text(
          model.title,
          textAlign: TextAlign.center,
          style: defaultTextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              textColor: Colors.black),
        ),
        SizedBox(
          height: height*.02,
        ),
        Text(
          model.body,
          textAlign: TextAlign.center,
          style: defaultTextStyle(fontSize: 18, textColor: Colors.grey),
        ),
      ],
    );
  }
}

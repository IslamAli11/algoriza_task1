import 'package:algoriza_task1/modules/register_screen.dart';
import 'package:algoriza_task1/shared/component/component.dart';
import 'package:algoriza_task1/shared/component/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'login_screen.dart';

class OnBoardingScreen extends StatefulWidget {
  OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController pageIndicatorController = PageController();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(

             decoration: BoxDecoration(
                 color: Colors.grey[200],
               borderRadius: BorderRadius.circular(30.0)
             ),
              child: TextButton(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginScreen()),
                        (route) => false);
                  },
                  child: Text(
                    'Skip',
                    style:
                        defaultTextStyle(fontSize: 17.0, textColor: Colors.black),
                  )),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20,bottom: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '7',
                  style: defaultTextStyle(
                      fontSize: 34,
                      fontFamily: 'Baloo_2',
                      textColor: Colors.orange),
                ),
                Text(
                  'Krave',
                  style: defaultTextStyle(
                      fontSize: 34,
                      fontFamily: 'Baloo_2',
                      textColor: Colors.teal),
                ),

              ],
            ),
            SizedBox(
              height: height*.01,
            ),
            Expanded(
              child: PageView.builder(
                itemBuilder: (context, index) =>
                    BoardingItem(model: boarding[index]),
                itemCount: boarding.length,
                controller: pageIndicatorController,
              ),
            ),
            SmoothPageIndicator(
              controller: pageIndicatorController,
              count: boarding.length,
              axisDirection: Axis.horizontal,
              effect: const SlideEffect(
                spacing: 2.0,
                radius: 11.0,
                dotWidth: 35.0,
                dotHeight: 12.0,
                paintStyle: PaintingStyle.stroke,
                strokeWidth: 1.5,
                //  dotColor:  Colors.white,
                activeDotColor: Colors.orange,
              ),
            ),
            SizedBox(
              height:height*.03 ,
            ),
            DefaultTextButton(
                fontSize: 18,
                text: 'Get Started',
                textColor: Colors.white,
                width: double.infinity,
                height: 40,
                color: Colors.teal,
                radius: 10.0,
                onPressed: () {
                  navigateAndRemove(context, LoginScreen());
                }),
            SizedBox(
              height:height*.02 ,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Don\'t have an account?'),
                InkWell(
                  onTap: (){
                    navigateAndRemove(context, RegisterScreen());
                  },
                    child: Text(
                  'Sign Up',
                  style: defaultTextStyle(textColor: Colors.teal),
                ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

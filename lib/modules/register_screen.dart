import 'package:algoriza_task1/shared/component/component.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                alignment: AlignmentDirectional.topStart,
                children: [
                  Image(
                    image: AssetImage('assets/images/abstract-988.png'),
                    width: width,
                    height: height * .3,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: CircleAvatar(
                          child: Icon(
                            Icons.arrow_back_ios_outlined,
                            color: Colors.white,
                          ),
                          radius: 30,
                          backgroundColor: Colors.black,
                        )),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcom to Fashion Daily',
                      style: defaultTextStyle(
                          fontSize: 18, textColor: Colors.grey),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Register',
                          style: defaultTextStyle(
                              fontSize: 40,
                              fontFamily: 'Baloo_2',
                              fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Row(
                          children: [
                            Text(
                              'Help',
                              style: defaultTextStyle(
                                  textColor: Colors.blue, fontSize: 18),
                            ),
                            const SizedBox(
                              width: 5.0,
                            ),
                            Image(
                              image: AssetImage(
                                  'assets/images/icons8-question-mark-64.png'),
                              height: 17,
                              width: 17,
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * .02,
                    ),
                    Text(
                      'Email',
                      style: defaultTextStyle(
                          fontSize: 16, textColor: Colors.grey),
                    ),
                    SizedBox(
                      height: height * .01,
                    ),
                    DefaultTextField(
                      hintText: 'Enter your email',
                      validator: 'email mus\'t  be empty',
                    ),
                    SizedBox(
                      height: height * .01,
                    ),
                    Text(
                      'Phone Number',
                      style: defaultTextStyle(
                          fontSize: 16, textColor: Colors.grey),
                    ),
                    SizedBox(
                      height: height * .01,
                    ),
                    DefaultTextField(
                      hintText: 'Enter your email',
                      validator: 'email mus\'t  be empty',
                    ),
                    SizedBox(
                      height: height * .01,
                    ),
                    Text(
                      'Password',
                      style: defaultTextStyle(
                          fontSize: 16, textColor: Colors.grey),
                    ),
                    SizedBox(
                      height: height * .01,
                    ),
                    DefaultTextField(
                      hintText: 'Enter your Password',
                      validator: 'email mus\'t  be empty',
                    ),
                    SizedBox(
                      height: height * .01,
                    ),
                    Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(10)),
                        child: TextButton(
                            onPressed: () {},
                            child: Text(
                              'Register',
                              style: defaultTextStyle(textColor: Colors.white),
                            ))),
                    SizedBox(
                      height: height * .01,
                    ),
                    Center(
                        child: Text(
                      'Or',
                      style: defaultTextStyle(
                          fontSize: 20, textColor: Colors.grey),
                    )),
                    TextButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              image: AssetImage(
                                  'assets/images/icons8-google-48 (1).png'),
                              width: 20,
                              height: 20,
                            ),
                            Text('Sign Up with google'),
                          ],
                        )),
                    SizedBox(height: 10.0),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:algoriza_task1/modules/register_screen.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../shared/component/component.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var phoneController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 250.0,
                  child: Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 250.0,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                  'assets/images/abstract-988.png')),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Welcome to Fashion Daily',
                        style: defaultTextStyle(
                            fontSize: 16, textColor: Colors.grey),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Sign In',
                            style: defaultTextStyle(
                                fontSize: 45,
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
                              const CircleAvatar(radius: 10, child: Text('?')),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * .02,
                      ),
                      Text(
                        'Phone Number',
                        style: defaultTextStyle(
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      DefaultTextField(
                        obscureText: false,
                        controller: phoneController,
                        keyboard: TextInputType.phone,
                        hintText: '1256788733',
                        validator: 'phone number mus\'t be empty',
                        prefixIcon: CountryCodePicker(
                          showFlag: false,
                          showDropDownButton: true,
                          initialSelection: 'AR',
                          favorite: ['+02', 'EG'],
                          showCountryOnly: false,
                          showOnlyCountryWhenClosed: false,
                        ),
                      ),
                      SizedBox(
                        height: height * .03,
                      ),
                      DefaultTextButton(
                          radius: 5,
                          color: Colors.blue,
                          textColor: Colors.white,
                          width: double.infinity,
                          height: 50,
                          fontSize: 18,
                          text: 'Sign In',
                          onPressed: () {
                            formKey.currentState!.validate();
                          }),
                      SizedBox(
                        height: height * .01,
                      ),
                      Center(
                          child: Text(
                        'Or',
                        style: defaultTextStyle(
                            fontSize: 20, textColor: Colors.grey),
                      )),
                      const SizedBox(
                        height: 10,
                      ),
                      defaultOutlineButton(text: 'Sign with by google'),
                      const SizedBox(height: 10.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Doesn\'t hase any account?'),
                          TextButton(
                              onPressed: () {
                                navigateAndRemove(context, RegisterScreen());
                              },
                              child: Text('Register here')),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Use application accroding to policy rules. Any kinds of violation will be subject to sanctions ',
                        style: defaultTextStyle(textColor: Colors.grey),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

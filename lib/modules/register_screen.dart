import 'package:algoriza_task1/modules/login_screen.dart';
import 'package:algoriza_task1/shared/component/component.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RegisterScreen extends StatefulWidget {
  RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  var emailController = TextEditingController();
  var phoneController = TextEditingController();
  var passwordController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    super.initState();
  }

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
                  height: 180.0,
                  child: Stack(
                    alignment: AlignmentDirectional.bottomCenter,
                    children: [
                      Align(
                        alignment: AlignmentDirectional.topCenter,
                        child: Container(
                          width: double.infinity,
                          height: 180.0,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    'assets/images/abstract-988.png')),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 30),
                        child: Align(
                          alignment: AlignmentDirectional.topStart,
                          child: IconButton(
                            onPressed: () {},
                            icon: const CircleAvatar(
                                backgroundColor: Colors.black,
                                radius: 40,
                                child: Icon(
                                  Icons.arrow_back_ios_outlined,
                                  color: Colors.white,
                                )),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 20, top: 15),
                        height: 70,
                        color: Colors.white,
                        width: double.infinity,
                        child: Text(
                          'Welcome to Fashion Daily',
                          style: defaultTextStyle(
                              fontSize: 16, textColor: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
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
                              const CircleAvatar(radius: 10, child: Text('?')),
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
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      DefaultTextField(
                        obscureText: false,
                        keyboard: TextInputType.emailAddress,
                        controller: emailController,
                        hintText: 'Enter your email',
                        validator: 'email mus\'t  be empty',
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Phone Number',
                        style: defaultTextStyle(
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
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
                        height: height * .01,
                      ),
                      Text(
                        'Password',
                        style: defaultTextStyle(
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        height: height * .01,
                      ),
                      DefaultTextField(
                        suffixIcon: Icon(Icons.visibility),
                        obscureText: true,
                        keyboard: TextInputType.visiblePassword,
                        controller: passwordController,
                        hintText: 'Enter your Password',
                        validator: 'password mus\'t  be empty',
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      DefaultTextButton(
                          radius: 5,
                          color: Colors.blue,
                          textColor: Colors.white,
                          width: double.infinity,
                          height: 50,
                          fontSize: 18,
                          text: 'Register',
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
                          Text('Has an account?'),
                          TextButton(
                              onPressed: () {
                                navigateAndRemove(context, LoginScreen());
                              },
                              child: Text('Sign in here')),
                        ],
                      ),
                      Text(
                        'By registering your account, you are agree to our ',
                        style: defaultTextStyle(textColor: Colors.grey),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Center(
                        child: Text(
                          'terms and condition',
                          style: defaultTextStyle(textColor: Colors.blue),
                        ),
                      ),
                      SizedBox(
                        height: 10,
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

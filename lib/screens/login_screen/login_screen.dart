import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:smart_power_mobile_app/screens/Components/input_text_with_icon.dart';
import 'package:smart_power_mobile_app/screens/Components/primary_button.dart';
import 'package:smart_power_mobile_app/screens/forgot_password_screen/forgot_password.dart';
import 'package:smart_power_mobile_app/screens/login_screen/components/or_divider.dart';
import 'package:smart_power_mobile_app/screens/login_screen/components/social_icon.dart';
import 'package:smart_power_mobile_app/screens/verify_screen/verify_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  int _pageState = 0;

  var _backgroundColor = Colors.white;
  var _headingColor =  Color(0xFF5961E0);

  double _headingTop = 100;

  double _loginWidth = 0;
  double _loginHeight = 0;
  double _loginOpacity = 1;

  double _loginYOffset = 0;
  double _loginXOffset = 0;
  double _registerYOffset = 0;
  double _registerHeight = 0;

  double windowWidth = 0;
  double windowHeight = 0;

  bool _keyboardVisible = false;

  @override 
  void initState() {
    super.initState();
    KeyboardVisibilityController().onChange.listen((bool visible) {
      setState(() {
        _keyboardVisible = visible;
      });
    });
  }

  @override
  Widget build(BuildContext context) {

    windowHeight = MediaQuery.of(context).size.height;
    windowWidth = MediaQuery.of(context).size.width;

    _loginHeight = windowHeight - 270;
    _registerHeight = windowHeight - 270;

    switch(_pageState) {
      // case 0:
      //   _backgroundColor = Colors.white;
      //   _headingColor = const Color(0xFFB40284A);

      //   _headingTop = 100;

      //   _loginWidth = windowWidth;
      //   _loginOpacity = 1;

      //   _loginYOffset = windowHeight;
      //   _loginHeight = _keyboardVisible ? windowHeight : windowHeight - 270;

      //   _loginXOffset = 0;
      //   _registerYOffset = windowHeight;
      //   break;
      case 0:
        _backgroundColor = const  Color(0xFF5961E0);
        _headingColor = Colors.white;

        _headingTop = 90;

        _loginWidth = windowWidth;
        _loginOpacity = 1;

        _loginYOffset = _keyboardVisible ? 40 : 270;
        _loginHeight = _keyboardVisible ? windowHeight : windowHeight - 270;

        _loginXOffset = 0;
        _registerYOffset = windowHeight;
        break;

      case 1:
        _backgroundColor = const Color(0xFF5961E0);
        _headingColor = Colors.white;

        _headingTop = 80;

        _loginWidth = windowWidth - 40;
        _loginOpacity = 0.7;

        _loginYOffset = _keyboardVisible ? 30 : 240;
        _loginHeight = _keyboardVisible ? windowHeight : windowHeight - 240;

        _loginXOffset = 10;
        _registerYOffset = _keyboardVisible ? 55 : 270; 
        _registerHeight = _keyboardVisible ? windowHeight : windowHeight - 270;
        break;
    }

    return Stack(
      children: <Widget>[
        AnimatedContainer(
          curve: Curves.fastLinearToSlowEaseIn,
          duration: const Duration(
            milliseconds: 1000
          ),
          color: _backgroundColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  setState(() {
                    _pageState = 0;
                  });
                },
                child: Container(
                  child: Column(
                    children: <Widget>[
                      AnimatedContainer(
                        curve: Curves.fastLinearToSlowEaseIn,
                        duration: const Duration(
                          milliseconds: 1000
                        ),
                        margin: EdgeInsets.only(
                          top: _headingTop,
                        ),
                        child: Text(
                          "Buy Power",
                          style: TextStyle(
                            color: _headingColor,
                            fontSize: 28
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(20),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 32
                        ),
                        child: Text(
                          "We make power consumption easy. Try Smart Light Mobile to buy power with Crypto.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: _headingColor,
                            fontSize: 16
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 32
                ),
                child: Center(
                  child: Image.asset("assets/images/Vector 2.png"),
                ),
              ),
              Container(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      if(_pageState != 0){
                        _pageState = 0;
                      } else {
                        _pageState = 1;
                      }
                    });
                  },
                  child: Container(
                    margin: const EdgeInsets.all(32),
                    padding: const EdgeInsets.all(20),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color:  const Color(0xFF5961E0),
                      borderRadius: BorderRadius.circular(50)
                    ),
                    child: const Center(
                      child: Text(
                        "Get Started",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          )
        ),
        AnimatedContainer(
          padding: const EdgeInsets.all(32),
          width: _loginWidth,
          height: _loginHeight,
          curve: Curves.fastLinearToSlowEaseIn,
          duration: const Duration(
            milliseconds: 1000
          ),
          transform: Matrix4.translationValues(_loginXOffset, _loginYOffset, 1),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(_loginOpacity),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(25),
              topRight: Radius.circular(25)
            )
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(bottom: 20),
                    child: const Text(
                      "Login To Continue",
                      style: TextStyle(
                        color: Colors.black,
                          fontSize: 20,
                          decoration: TextDecoration.none
                      ),
                    ),
                  ),
                  const InputTextWithIcon(
                    icon: Icons.email,
                    hint: "Enter Email...",
                  ),
                  const SizedBox(height: 20,),
                  const InputTextWithIcon(
                    icon: Icons.vpn_key,
                    hint: "Enter Password...",
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text("Forget Password? ",
                        style: TextStyle(
                                fontSize: 15, 
                                color: Colors.black,
                                decoration: TextDecoration.none,
                            ),
                        ),
                        GestureDetector(
                          onTap: () { 
                            Navigator.pushReplacement(
                                context,
                                  MaterialPageRoute(builder: (context) => const ForgotPassword())
                                );
                          }, 
                          child: const Text(
                            "Reset",
                            style: TextStyle(
                                fontSize: 15,
                                color:  Color(0xFF5961E0)
                            ),
                          ),
                      )
                    ],
                  ),
                  const SizedBox(height: 20,),
                  const OrDivider(),
                  const SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SocalIcon(
                        iconSrc: "assets/icons/facebook.svg",
                        press: () {},
                      ),
                      SocalIcon(
                        iconSrc: "assets/icons/twitter.svg",
                        press: () {},
                      ),
                      SocalIcon(
                        iconSrc: "assets/icons/google-plus.svg",
                        press: () {},
                      ),
                    ],
                  )
                ],
              ),
              Column(
                children: <Widget>[
                  GestureDetector(
                          onTap: () {
                              Navigator.pushReplacement(
                                context,
                                  MaterialPageRoute(builder: (context) => const VerifyScreen())
                                );
                           },
                          child: const PrimaryButton(
                            btnText: "Login",
                          ),
                        ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("New User? ",
                        style: TextStyle(
                          color: Colors.black,
                          decoration: TextDecoration.none, 
                                fontSize: 15
                            ),
                        ),
                        GestureDetector(
                              onTap: () {
                              //   setState(() {
                              //   _pageState = 1;
                              // });
                            },
                          child: const Text(
                            "Create Account",
                            style: TextStyle(
                                fontSize: 15,
                                color: Color(0xFF5961E0),
                            ),
                          ),
                        )
                    ],
                  ),
                  // GestureDetector(
                  //   onTap: () {
                  //     setState(() {
                  //       _pageState = 2;
                  //     });
                  //   },
                  //   child: const OutlineBtn(
                  //     btnText: "Create New Account",
                  //   ),
                  // )
                ],
              ),
            ],
          ),
        ),
        AnimatedContainer(
          height: _registerHeight,
          padding: const EdgeInsets.all(32), 
          curve: Curves.fastLinearToSlowEaseIn,
          duration: const Duration(
              milliseconds: 1000
          ),
          transform: Matrix4.translationValues(0, _registerYOffset, 1),
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25)
              )
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container( 
                    // margin: const EdgeInsets.only(bottom: 20),
                    child: const Text(
                      "Create a New Account",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ),
                  const InputTextWithIcon(
                    icon: Icons.email,
                    hint: "Enter Fullname...",
                  ),
                  const SizedBox(height: 20,),
                  const InputTextWithIcon(
                    icon: Icons.email,
                    hint: "Enter Email...",
                  ),
                  const SizedBox(height: 20,),
                  const InputTextWithIcon(
                    icon: Icons.vpn_key,
                    hint: "Enter Password...",
                  )
                ],
              ),
               const SizedBox(height: 10,),
                  const OrDivider(),
                  const SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SocalIcon(
                        iconSrc: "assets/icons/facebook.svg",
                        press: () {},
                      ),
                      SocalIcon(
                        iconSrc: "assets/icons/twitter.svg",
                        press: () {},
                      ),
                      SocalIcon(
                        iconSrc: "assets/icons/google-plus.svg",
                        press: () {},
                      ),
                    ],
                  ),
                const SizedBox(height: 10,),
              Column(
                children: <Widget>[
                  const PrimaryButton(
                    btnText: "Create Account",
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Already Join? ", 
                        style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                decoration: TextDecoration.none,
                            ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                            _pageState = 1;
                          });
                           },
                          child: const Text(
                            "Login",
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.blue
                            ),
                          ),
                        )
                    ],
                  ),
                  // GestureDetector(
                  //   onTap: () {
                  //     setState(() {
                  //       _pageState = 1;
                  //     });
                  //   },
                  //   child: const OutlineBtn(
                  //     btnText: "Back To Login",
                  //   ),
                  // )
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:smart_power_mobile_app/screens/Components/input_num_with_icon.dart';
import 'package:smart_power_mobile_app/screens/Components/primary_button.dart';
import 'package:smart_power_mobile_app/screens/dashboard_screen/home_screen/home_screen.dart';
import 'package:smart_power_mobile_app/screens/login_screen/components/or_divider.dart';
import 'package:smart_power_mobile_app/screens/login_screen/components/social_icon.dart';
import 'package:smart_power_mobile_app/screens/otp_screen/otp_screen.dart';

class VerifyScreen extends StatefulWidget {
  const VerifyScreen({Key? key}) : super(key: key);

  @override
  _VerifyScreenState createState() => _VerifyScreenState();
}

class _VerifyScreenState extends State<VerifyScreen> {

  int _pageState = 0;

  var _backgroundColor = Colors.white;
  var _headingColor = const Color(0xFFB40284A);

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
        _backgroundColor = const  Color(0xFF5961E0);
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
            children: <Widget> [
              GestureDetector(
                onTap: () {
                  // setState(() {
                  //     if(_pageState != 0){
                  //       _pageState = 0;
                  //     } else {
                  //       _pageState = 1;
                  //     }
                  //   });
                },

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start, 
                  children: const <Widget>[
                    //  SizedBox(
                    //   height: 60,
                    //   width: 350,
                    //       child: Row(
                    //         children: <Widget>[
                    //             Container(
                    //              margin: const EdgeInsets.only(right: 20),
                    //              height: 70,
                    //              width: 60,
                    //              decoration: BoxDecoration(
                    //                 color: Colors.white,
                    //                 borderRadius: BorderRadius.circular(18),
                    //                 border: Border.all(
                    //                   color: const Color(0xFF5961E0),
                    //                   width: 2
                    //                 )
                    //               ),
                    //                child:IconButton(
                    //                  icon: const Icon(Icons.arrow_back, color: Colors.black,),
                    //                  onPressed: () {
                    //                     Navigator.pop(context);
                    //                   },
                    //                ),
                    //              ),
                    //            ],
                    //          ),
                    //       )
                  //   AnimatedContainer(
                  //     curve: Curves.fastLinearToSlowEaseIn,
                  //     duration: const Duration(
                  //       milliseconds: 1000
                  //     ),
                  //     margin: EdgeInsets.only(
                  //       top: _headingTop,
                  //     ),
                  //     child: Text(
                  //       "Buy Power",
                  //       style: TextStyle(
                  //         color: _headingColor,
                  //         fontSize: 28
                  //       ),
                  //     ),
                  //   ),
                  //   Container(
                  //     margin: const EdgeInsets.all(20),
                  //     padding: const EdgeInsets.symmetric(
                  //       horizontal: 32
                  //     ),
                  //     child: Text(
                  //       "We make power consumption easy. Try Smart Light Mobile to buy power with Crypto.",
                  //       textAlign: TextAlign.center,
                  //       style: TextStyle(
                  //         color: _headingColor,
                  //         fontSize: 16
                  //       ),
                  //     ),
                  //   )
                   ],
                ),
              ),
              Container(
                padding:const EdgeInsets.fromLTRB(0, 0, 50, 200),
                margin: const EdgeInsets.only(
                 bottom: 35,
                ),

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children:[
                  Image.asset("assets/images/verify_bg.png"),
                ],

                ),
              ),
              Container(
                child: GestureDetector(
                  onTap: () {     
                    setState(() {
                    _pageState = 1;
                  });
                  },
                  child: Container(
                    margin: const EdgeInsets.all(32),
                    padding: const EdgeInsets.all(20),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: const Color(0xFFB40284A),
                      borderRadius: BorderRadius.circular(50)
                    ),
                    child: const Center(
                      child: Text(
                        "Get started",
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
  // Animated Container TWO
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
                      "Verify Phone Number",
                      style: TextStyle(
                        color: Colors.black, 
                        decoration: TextDecoration.none,
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  const InputNumWithIcon(
                    icon: Icons.contact_phone,
                    hint: "+234 XXX XXX XXXX",
                  ),
                  const SizedBox(height: 20,),
                   GestureDetector(
                          onTap: () { 
                             Navigator.pushReplacement(
                               context,
                                 MaterialPageRoute(builder: (context) => const OTPPassword())
                               );
                          },
                          child: const Text(
                            "Send OTP",
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.blue
                            ),
                          ),
                        ),
                 ],
              ),
              Material(
                child: Row( 
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                        SizedBox(
                          height: 68,
                          width: 64,
                          child: TextFormField(
                              onSaved: (pin1) {},
                              onChanged: (value) {
                                if (value.length == 1) {
                                  FocusScope.of(context).requestFocus(FocusNode());
                                }
                              },
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20)
                                ),
                                hintText: "0",
                              ),
                              style: const TextStyle(
                                color: Color(0xFFBC7C7C7)
                              ),
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(1),
                                FilteringTextInputFormatter.digitsOnly,
                              ]
                            )
                        ),
                        SizedBox(
                          height: 68,
                          width: 64,
                          child: TextFormField(
                            onSaved: (pin2) {},
                            onChanged: (value) {
                              if (value.length == 1) {
                                FocusScope.of(context).requestFocus(FocusNode());
                              }
                            },
                           decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20)
                                ),
                                hintText: "0",
                              ),
                            style: const TextStyle(
                              color: const Color(0xFFBC7C7C7)
                            ),
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly,
                            ]
                          )
                        ),
                        SizedBox(
                          height: 68,
                          width: 64,
                          child: TextFormField(
                            onSaved: (pin3) {},
                            onChanged: (value) {
                              if (value.length == 1) {
                                FocusScope.of(context).requestFocus(FocusNode());
                              }
                            },
                           decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20)
                                ),
                                hintText: "0",
                              ),
                            style: const TextStyle(
                              color: const Color(0xFFBC7C7C7)
                            ),
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly,
                            ]
                          )
                        ),
                        SizedBox(
                          height: 68,
                          width: 64,
                          child: TextFormField(
                            onSaved: (pin4) { },
                            onChanged: (value) {
                              if (value.length == 1) {
                                FocusScope.of(context).requestFocus(FocusNode());
                              }
                            },
                           decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20)
                                ),
                                hintText: "0",
                              ),
                            style: const TextStyle(
                              color: Color(0xFFBC7C7C7)
                            ),
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly,
                            ]
                          )
                        )
                      ]
                    ),
              ),
              Column(
                children: <Widget>[
                  GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                              MaterialPageRoute(builder: (context) => const Home())
                            );
                          },
                          child: const PrimaryButton(
                                btnText: "Finish",
                              ),
                          ),
                        const SizedBox(
                          height: 20,
                        ),
                    ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
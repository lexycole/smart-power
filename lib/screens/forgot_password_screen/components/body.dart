import 'package:flutter/material.dart';
import 'package:smart_power_mobile_app/screens/Components/input_text_with_icon.dart';
import 'package:smart_power_mobile_app/screens/Components/primary_button.dart';
import 'package:smart_power_mobile_app/screens/otp_screen/otp_screen.dart';
import 'package:smart_power_mobile_app/screens/verify_screen/verify_screen.dart';

class Body extends StatelessWidget {
   const Body({Key? key}) : super(key: key);

   @override
   Widget build(BuildContext context) {
     Size size = MediaQuery.of(context).size;
     return SingleChildScrollView(
      child:  Container(
                height: size.height,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                   image: AssetImage('assets/images/forgot_image.png'),
                    fit: BoxFit.cover,
                   ),
                ),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: size.height,
                    child: Stack(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: size.height * 0.5), 
                          padding: EdgeInsets.only(top: size.height * 0.1,
                          left: 20,
                          right: 20),
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius:  BorderRadius.only(
                              topLeft: Radius.circular(24),
                              topRight:  Radius.circular(24)
                            )
                          ),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Column(
                                  children: <Widget>[
                                    Container(
                                      // padding: const EdgeInsets.fromLTRB(0, 0, 170,  0),
                                      child: const Text(
                                        "Forgot Password?",
                                        style: TextStyle(
                                            fontSize: 24,
                                            fontWeight: FontWeight.bold
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 20,),
                                    const Text(
                                      "Don't worry, happens to the best of us. Please enter your email address registered with your account.",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Color(0xFFB40284A)
                                      ),
                                    ),
                                    const SizedBox(height: 20,),
                                    const InputTextWithIcon(
                                      icon: Icons.email,
                                      hint: "Enter Email...",
                                    ),
                                    const SizedBox(height: 20,),
                                          GestureDetector(
                                            onTap: () {
                                                Navigator.pushReplacement(
                                                  context,
                                                    MaterialPageRoute(builder: (context) => const OTPPassword())
                                                  );
                                            },
                                            child: const PrimaryButton(
                                              btnText: "Submit",
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 60, 0, 0),
                          child: Column(
                              children: <Widget>[
                                Ink(
                                    decoration: const ShapeDecoration(
                                      color: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(20)),
                                      ),
                                    ),
                                    child: IconButton(
                                      iconSize: 40, 
                                      icon: const Icon(
                                        Icons.arrow_back, 
                                        color: Colors.black,
                                        ),
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                    ),
                                  ),
                              ],
                          )
                        ),
                            ]
                          )
                      )
                  ]
                )
            ),
     );
   } 
}
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:smart_power_mobile_app/screens/Components/input_num_with_icon.dart';
import 'package:smart_power_mobile_app/screens/Components/primary_button.dart';
import 'package:smart_power_mobile_app/screens/new_password_screen/new_password.dart';

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
                                      child: const Text(
                                        "Enter OTP",
                                        style: TextStyle(
                                            fontSize: 24,
                                            fontWeight: FontWeight.bold
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 20,),
                                    const Text(
                                      "An OTP has been sent to your registered email Enter OTP Below to Resent Password.",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Color(0xFFB40284A)
                                      ),
                                    ),
                                    const SizedBox(height: 20,),
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
                                    // const InputNumWithIcon(
                                    //   icon: Icons.email,
                                    //   hint: "Enter Email...",
                                    // ),
                                    const SizedBox(height: 20,),
                                          GestureDetector(
                                            onTap: () {
                                                Navigator.pushReplacement(
                                                  context,
                                                    MaterialPageRoute(builder: (context) => const NewPassword())
                                                  );
                                            },  
                                            child: const PrimaryButton(
                                              btnText: "Reset",
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
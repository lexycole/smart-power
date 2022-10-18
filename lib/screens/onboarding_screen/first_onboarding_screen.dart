import 'package:flutter/material.dart';
import 'package:smart_power_mobile_app/screens/onboarding_screen/second_onboarding_screen.dart';

  class FirstOnboardingScreen extends StatelessWidget {
    const FirstOnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        body: Column(
          children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch ,
                  children: <Widget>[
                       Image.asset('assets/images/Rectangle_screen_one.png', 
                       width: MediaQuery.of(context).size.width, 
                       height: MediaQuery.of(context).size.height * 0.6,
                        fit: BoxFit.fill,
                       ), 
                    ],
                  ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.fromLTRB(30, 5, 30, 10),
                child: Column(
                  children:[
                      Row(
                        children:[
                          Image.asset('assets/images/nav_line_one.png', height: 20, width: 80, ),
                          ],
                        ),
                    const SizedBox(height: 10),
                        Row (
                        children: const [
                          Expanded(
                          child: Text(
                            'Monitor Power Consumption',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              ),
                            ),  
                          ),
                        ],
                      ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child:Text(
                        'Sign up to see photos and videos from your friends.from your friends.from your friends.',
                        style: TextStyle(
                          fontSize: 20,
                          ),
                        ),
                      ),
                      const SizedBox(
                           height: 20,),
                      SizedBox(
                           height: 60,
                           width: 350,
                                child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: const Color(0xFF5961E0),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)
                                  ),
                                  elevation: 8
                              ),
                              onPressed: () {
                                 Navigator.pushReplacement(
                                context,
                                  MaterialPageRoute(builder: (context) => const SecondOnboardingScreen())
                                );
                              },
                              child: const Text("Next", style: TextStyle(fontSize: 20)),
                            ),
                          ),
                        ],
                      ),
                    )
                  )
                ],
              )  
          );
          }
        }
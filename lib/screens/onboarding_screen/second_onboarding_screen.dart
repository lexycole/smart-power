  import 'package:flutter/material.dart';
import 'package:smart_power_mobile_app/screens/onboarding_screen/third_onboarding_screen.dart';

  class SecondOnboardingScreen extends StatelessWidget {
    const SecondOnboardingScreen({Key? key}) : super(key: key);

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
                          Image.asset('assets/images/nav_line_two.png', height: 20, width: 80, ),
                          ], 
                        ),
                    const SizedBox(height: 10),
                        Row (
                        children: const [
                          Expanded(
                          child: Text(
                            'Buy Power with Crypto',
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
                              child: Row(
                                    children: <Widget>[
                                        Container(
                                          margin: const EdgeInsets.only(right: 20),
                                          height: 70,
                                          width: 60,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(18),
                                            border: Border.all(
                                              color: Color(0xFF5961E0),
                                              width: 2
                                            )
                                          ),
                                            child:IconButton(
                                              icon: const Icon(Icons.arrow_back, color: Colors.black,),
                                              onPressed: () {
                                                 Navigator.pop(context);
                                              },
                                            ),
                                        ),
                                        Expanded(
                                          child: SizedBox(
                                              height: 100,
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
                                                          MaterialPageRoute(builder: (context) => const ThirdOnboardingScreen())
                                                        );
                                                      },
                                                      child: const Text("Next", style: TextStyle(fontSize: 20)),
                                                    ),
                                                  ),
                                                ),
                                            ],
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
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:smart_power_mobile_app/screens/splash_screen/splash_screen.dart';

import '../../login_screen/login_screen.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {

  void onDone(context) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('ON_BOARDING', false);
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LoginScreen())
        );
    }

  final List<PageViewModel> pages = [
    PageViewModel(
      title: 'Monitor Power Consumption',
      body: 'Here we provide a suite of biometric facial recognition software solution to prevent id theft and fraud.',
      footer: SizedBox(
        height: 60,
        width: 350,
            child: 
            // Row(
            //           children: <Widget>[
            //                Container(
            //                  margin: const EdgeInsets.only(right: 20),
            //                  height: 70,
            //                  width: 60,
            //                  decoration: BoxDecoration(
            //                    color: Colors.white,
            //                    borderRadius: BorderRadius.circular(18),
            //                    border: Border.all(
            //                      color: Color(0xFF5961E0),
            //                      width: 2
            //                    )
            //                  ),
            //                   child:IconButton(
            //                     icon: const Icon(Icons.arrow_back, color: Colors.black,),
            //                     onPressed: () {},
            //                   ),
            //                ),
            //                Expanded(
            //                  child: SizedBox(
            //                     height: 100,
            //                     child: ElevatedButton(
            //                             style: ElevatedButton.styleFrom(
            //                                 primary: Color(0xFF5961E0),
            //                                 shape: RoundedRectangleBorder(
            //                                     borderRadius: BorderRadius.circular(20)
            //                                 ),
            //                                 elevation: 8
            //                             ),
            //                             onPressed: () {},
            //                             child: const Text("Next", style: TextStyle(fontSize: 20)),
            //                           ),
            //                         ),
            //                       ),
            //                   ],
            //           ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              primary: Color(0xFF5961E0),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
              ),
              elevation: 8
          ),
          onPressed: () {},
          child: const Text("Let's Go", style: TextStyle(fontSize: 20)),
        ),
      ),  
      image: Center(
        child: Image.asset('assets/images/Vector 2.png'),
      ),
      decoration: const PageDecoration(
        titleTextStyle: TextStyle(
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
        )
      )
    ),
    PageViewModel(
        title: 'Buy Power with Crypto',
        body: 'Here we prevent data breaches, 3rd party data breaches. data loses',
        footer: SizedBox(
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
                                 color: const Color(0xFF5961E0),
                                 width: 2
                               )
                             ),
                              child:IconButton(
                                icon: const Icon(Icons.arrow_back, color: Colors.black,),
                                onPressed: () {},
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
                                        onPressed: () {},
                                        child: const Text("Next", style: TextStyle(fontSize: 20)),
                                      ),
                                    ),
                                  ),
                              ],
                      ),
          // ElevatedButton(
          //   style: ElevatedButton.styleFrom(
          //       shape: RoundedRectangleBorder(
          //           borderRadius: BorderRadius.circular(20)
          //       ),
          //       elevation: 8
          //   ),
          //   onPressed: () {},
          //   child: const Text("Why to wait!", style: TextStyle(fontSize: 20),),
          // ),
        ),
        image: Center(
          child: Image.asset('assets/images/Vector 2.png'),
        ),
        decoration: const PageDecoration(
            titleTextStyle: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            )
        )
    ),
    PageViewModel(
        title: 'Set Alarm for your power usage',
        body: 'Here we protect all consumers, regtech, merchants, healthcare facilities, retailers.',
        footer: SizedBox(
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
                                onPressed: () {},
                              ),
                           ),
                           Expanded(
                             child: SizedBox(
                                height: 100,
                                child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            primary: Color(0xFF5961E0),
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(20)
                                            ),
                                            elevation: 8
                                        ),
                                        onPressed: () async {
                                        //   if (await controller.canGoBack()) {
                                        //     controller.goBack();
                                        //   }
                                        },
                                        child: const Text("Next", style: TextStyle(fontSize: 20)),
                                      ),
                                    ),
                                  ),
                              ],
                      ),
          // ElevatedButton(
          //   style: ElevatedButton.styleFrom(
          //       primary: Colors.red,
          //     shape: RoundedRectangleBorder(
          //       borderRadius: BorderRadius.circular(20)
          //     ),
          //     elevation: 8
          //   ),
          //   onPressed: () {},
          //   child: const Text("Let's Start", style: TextStyle(fontSize: 20)),
          // ),
        ),
        image: Center(
          child: Image.asset('assets/images/Vector 2.png'),
        ),
        decoration: const PageDecoration(
            titleTextStyle: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            )
        )
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Smart Light'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(12, 80, 12, 12),
        child: IntroductionScreen(
          pages: pages,
          dotsDecorator: const DotsDecorator(
            size: Size(15,15),
            color: Colors.blue,
            activeSize: Size.square(20),
            activeColor: Colors.red,
          ),
          showDoneButton: true,
          done: const Text('Done', style: TextStyle(fontSize: 20),),
          showSkipButton: true,
          skip: const Text('Skip', style: TextStyle(fontSize: 20),),
          showNextButton: true,
          next: const Icon(Icons.arrow_forward, size: 25,),
          onDone: () => onDone(context),
          curve: Curves.bounceOut,
        ),
      ),
    );
  }

}
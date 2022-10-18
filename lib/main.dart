import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smart_power_mobile_app/screens/dashboard_screen/home_screen/home_screen.dart';
import 'package:smart_power_mobile_app/screens/forgot_password_screen/forgot_password.dart';
import 'package:smart_power_mobile_app/screens/login_screen/login_screen.dart';
import 'package:smart_power_mobile_app/screens/new_password_screen/new_password.dart';
import 'package:smart_power_mobile_app/screens/onboarding_screen/onboarding_screen.dart';
import 'package:smart_power_mobile_app/screens/otp_screen/otp_screen.dart';
import 'package:smart_power_mobile_app/screens/splash_screen/splash_screen.dart';
import 'package:smart_power_mobile_app/screens/verify_screen/verify_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
   Widget build(BuildContext context) {
    return Provider(
      create: (_) => const OnboardingScreen(),
      child: MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Smart Power Mobile',
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/onboardingscreen': (context) =>  const OnboardingScreen(),
        '/login': (context) => const LoginScreen(),
        '/verify': (context) => const VerifyScreen(),
        '/forgot-password': (context) => const ForgotPassword(),
        '/otp': (context) => const OTPPassword(),
        '/new-password': (context) =>  const NewPassword(),
        '/home': (context) => const Home(),
        // '/dashboard': (context) => const Dashboard(),
        }
      ),
    );
  }
}
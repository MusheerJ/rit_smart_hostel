import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:rit_smart_hostel/screens/home_screen.dart';
import 'package:rit_smart_hostel/screens/login_screen.dart';
import 'package:rit_smart_hostel/utils/color_utils.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(
      Duration(
        milliseconds: 1500,
      ),
      () {},
    );

    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => HomeScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      duration: 3000,
      splash: Column(
        children: [
          Image.asset(
            'assets/images/img.png',
            height: 70,
            width: 70,
          ),

          // <-- SEE HERE
        ],
      ),
      nextScreen: LoginScreen(),
      splashTransition: SplashTransition.fadeTransition,
      backgroundColor: ColorConstants.kSecondaryColor,
    );
  }
}

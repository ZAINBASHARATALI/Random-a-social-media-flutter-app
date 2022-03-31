import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:ltp/screens/auth/signin.dart';
import 'package:ltp/utils/constants.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      logo: Image.asset(
        'assets/main_icon.png',
        color: kMainColor,
      ),
      title: const Text(
        "Random",
        style: TextStyle(
          fontSize: 25,
          color: kMainColor,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
      //backgroundColor: Colors.grey.shade400,
      showLoader: true,
      loadingText: const Text(
        "Loading...",
        style: TextStyle(color: kMainColor),
      ),
      navigator: const SignInPage(),
      durationInSeconds: 3,
    );
  }
}

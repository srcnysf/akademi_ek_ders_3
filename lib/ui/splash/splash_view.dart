import 'package:akademi_ek_ders_3/constants/constants.dart';
import 'package:akademi_ek_ders_3/widgets/splash.dart';
import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Splash(
      backgroundColor: Constants.backroundColor,
      loaderColor: Constants.primaryColor,
      title: Text(
        "Food App",
        style: TextStyle(fontSize: 40, color: Constants.primaryColor, fontWeight: FontWeight.bold),
      ),
      image: Image.asset("assets/logo.png"),
      photoSize: 100,
    );
  }
}

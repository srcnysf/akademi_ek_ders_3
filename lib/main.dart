import 'package:akademi_ek_ders_3/constants/constants.dart';
import 'package:akademi_ek_ders_3/di/locator.dart';
import 'package:akademi_ek_ders_3/ui/home/home.dart';
import 'package:akademi_ek_ders_3/ui/splash/splash_view.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Food App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          backgroundColor: Constants.backroundColor,
          primarySwatch: Colors.green,
        ),
        home: SplashView());
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:uiappsdegain/account_step/forgot_password_method.dart';
import 'package:uiappsdegain/forget_reset_password/forgot_password_method.dart';
import 'package:uiappsdegain/onbording/list_carousel1.dart';
import 'package:uiappsdegain/onbording/list_carousel2.dart';
import 'package:uiappsdegain/splahscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: SplashScreen(),
    );
  }
}

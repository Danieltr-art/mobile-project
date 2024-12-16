import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:web2project/auth/login.dart';
import 'package:web2project/auth/signUp.dart';
import 'package:web2project/personUpdate.dart';
import 'homePage.dart';
import 'introPage.dart';

void main() {
  runApp(
      DevicePreview(
        backgroundColor: Colors.white,
        enabled: !kReleaseMode,
        builder: (context) => const MyApp(),
      )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "introPage",
      routes: {
        "introPage" : (context) => const introPage(),
        "homePage" : (context) => const homePage(),
        "signUp" : (context) => const signUp(),
        "login" : (context) => const login(),
        "personUpdate" : (context) => const personUpdate(),
      },
    );
  }
}


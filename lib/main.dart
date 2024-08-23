import 'package:flutter/material.dart';
import 'package:vpn_basic_project/screens/home_screen.dart';
// import 'package:vpn_basic_project/screens/splash_screen.dart';
// import 'screens/home_screen.dart';


//global object for accessing device screen size
late Size mq;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MTech VPN',
      home: HomeScreen(),
      // home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

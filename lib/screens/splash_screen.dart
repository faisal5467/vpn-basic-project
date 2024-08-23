import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vpn_basic_project/screens/home_screen.dart';
import '../main.dart';
// import 'home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 1500), () {
      //exit full-screen
      // SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);

  
      //navigate to home
      // Get.off(() => HomeScreen());
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (_) => HomeScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    //initializing media query (for getting device screen size)
    mq = MediaQuery.of(context).size;

    return Scaffold(
       backgroundColor: Color(0xFFFF9900), 
      body: Stack(
        children: [
          //app logo
          Positioned(
              left: mq.width * .3,
              top: mq.height * .2,
              width: mq.width * .4,
              child: Image.asset('assets/images/Shield.png')),
        //label
          Positioned(
              bottom: mq.height * .5,
              width: mq.width,
              child: Text(
                'FAST VPN',
                textAlign: TextAlign.center,
                
               style: TextStyle(
                    color: Colors.black87, letterSpacing: 1, fontSize: 20, fontWeight: FontWeight.bold),
              )),
          Positioned(
              bottom: mq.height * .46,
              width: mq.width,
              child: Text(
                'Version 2.1.0',
                textAlign: TextAlign.center,
                
               style: TextStyle(
                    color: Colors.black87, letterSpacing: 1, fontSize: 15,),
              )),
        //label
          Positioned(
              bottom: mq.height * .15,
              width: mq.width,
              child: Text(
                'Protect your privacy at lightning speed.',
                textAlign: TextAlign.center,
               style: TextStyle(
                    color: Colors.black87, letterSpacing: 1),
              ))
         
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application_2/screens/signin/Signin.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  State<SplashScreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
        return Signin();
      }));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo.shade500,
      body: Container(
        child: Center(
          children: [ 
            Image.asset(
              "assets/images/logo.png",
              width:48,
            ),
            Container(
              child: Row(
                children: [
                  SizedBox(
                    child: CircularPrgress(
                      color: Colors.blue.shade400,
                      backgroundColor: Colors.blue.shade600,
                      strokeWidth:2.0,
                    ),
                  )
                ]
              )
            )
            Text(
            'Welcome Back',
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
          ),
          ]
        ),
      ),
    );
  }
}


import 'dart:async';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:mceapp/Login_screen.dart';

void main() async{
WidgetsFlutterBinding.ensureInitialized();
 await Firebase.initializeApp(options: FirebaseOptions(
     apiKey: "AIzaSyAyYFSS1Q7nUQnya5YSNIGgBnAChWiq6lw",
     appId: "1:876152242832:android:eced82baacb52979604e15",
     messagingSenderId: "",
     projectId: "mce-firebase-setup"));
  runApp(const MceApp(),

  );
}
class MceApp extends StatelessWidget {
  const MceApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'mcegraphic',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFF1f1536),
        body: SplashScreen(),
      ),
    );
  }
}
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
    Timer(Duration(seconds: 3), (){
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => LoginScreen())
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1f1536),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/mce.png',height: 180,),
            SizedBox(height: 20,),
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}


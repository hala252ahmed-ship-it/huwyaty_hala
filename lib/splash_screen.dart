import 'dart:async';
import 'package:flutter/material.dart';
import 'main.dart'; 
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomePage()),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    
    const earthBrown = Color.fromARGB(255, 17, 16, 16); 
    const textColor = Color.fromARGB(255, 18, 17, 17);  

    return Scaffold(
      backgroundColor: earthBrown,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             
            Image.asset(
              "assets/hawytyy.png", 
              width: 700, 
              height: 300,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 20),
            const Text(
              "هويتي",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: textColor,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                "هويتك بأمان في مكان واحد",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  color: textColor,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            const SizedBox(height: 50),
            const CircularProgressIndicator(
              color: textColor,
            ),
          ],
        ),
      ),
    );
  }
}
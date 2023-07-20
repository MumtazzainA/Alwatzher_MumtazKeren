import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jam/pages/home_screen.dart';

class SplashEmergencyScreen extends StatefulWidget {
  const SplashEmergencyScreen({super.key});

  @override
  State<SplashEmergencyScreen> createState() => _SplashEmergencyScreenState();
}

class _SplashEmergencyScreenState extends State<SplashEmergencyScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 2),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()),
      ),
    );
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.redAccent, // Set the desired background color
          child: Stack(
            children: [
              Positioned(
                top: 140.0,
                left: 142.0,
                child: Text(
                  'Call Ended',
                  style: GoogleFonts.inter(
                    color: Color(0xffFFFFFF),
                    fontSize: 25.0,
                    fontWeight: FontWeight.w500, // "Medium" weight
                  ),
                ),
              ),
              Positioned(
                top: 190.0,
                left: 165.0,
                child: Text(
                  'Altwatzer 1',
                  style: GoogleFonts.inter(
                    color: Color.fromARGB(255, 38, 38, 38),
                    fontSize: 15.0,
                    fontWeight: FontWeight.w500, // "Medium" weight
                  ),
                ),
              ),
              Center(
                child: SizedBox(
                  width: 174,
                  height: 248,
                  child: Image.asset(
                    'assets/images/Group 12561.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ],
          ),
        ),
        // ...
      ),
    );
  }
}

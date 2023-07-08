import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Connect3Screen extends StatefulWidget {
  const Connect3Screen({super.key});

  @override
  State<Connect3Screen> createState() => _Connect3ScreenState();
}

class _Connect3ScreenState extends State<Connect3Screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Color(0xff1E1E1E), // Set the desired background color
          child: Stack(
            children: [
              Positioned(
                top: 140.0,
                left: 140.0,
                child: Text(
                  'Prepare to pair',
                  style: GoogleFonts.inter(
                    color: Color(0xffFFFFFF),
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500, // "Medium" weight
                  ),
                ),
              ),
              Positioned(
                top: 190.0,
                left: 115.0,
                child: Text(
                  'Confirm pairing in the watch',
                  style: GoogleFonts.inter(
                    color: Color(0xff808080),
                    fontSize: 12.0,
                    fontWeight: FontWeight.w500, // "Medium" weight
                  ),
                ),
              ),
               Positioned(
              bottom: 280.0,
              left:111 ,
              child: SizedBox(
                width: 174,
                height: 248,
                child: Image.asset(
                  'assets/images/Group 125.png',
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

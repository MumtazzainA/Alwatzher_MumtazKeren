import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Connect2Screen extends StatefulWidget {
  const Connect2Screen({super.key});

  @override
  State<Connect2Screen> createState() => _Connect2ScreenState();
}

class _Connect2ScreenState extends State<Connect2Screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 16.0,
            left: 25.0,
            child: GestureDetector(
              onTap: () {
                // Handle button tap
                // Add your desired functionality here
              },
              child: SizedBox(
                width: 7.74,
                height: 15.0,
                child: Image.asset(
                  'assets/images/back.png',
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          Positioned(
            top: 100.0,
            left: 25.0,
            child: SizedBox(
              width: 43,
              height: 40,
              child: Image.asset(
                'assets/images/Group 12560.png',
                fit: BoxFit.contain,
              ),
            ),
          ),
          Positioned(
            top: 99.0,
            left: 88.0,
            child: Text(
              'Alwatzher Series 2',
              style: GoogleFonts.inter(
                fontSize: 16.0,
                fontWeight: FontWeight.w500, // "Medium" weight
              ),
            ),
          ),
          Positioned(
            top: 120.0,
            left: 88.0,
            child: Text(
              'xx:xx:xx:xx',
              style: GoogleFonts.inter(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500, // "Medium" weight
                  color: Colors.grey[400]),
            ),
          ),
          Positioned(
            bottom: 120.0, // Adjust the top positioning as needed
            left: 16.0, // Adjust the left positioning as needed
            right: 16.0, // Adjust the right positioning as needed
            child: SizedBox(
              width: 283,
              height: 40,
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Color(0xff496ADE),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  "Re-Scan",
                  style: TextStyle(
                    color: Color(0xffffffff),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 60.0, // Adjust the top positioning as needed
            left: 137.0, // Adjust the left positioning as needed
            right: 50.0, // Adjust the right positioning as needed
            child: GestureDetector(
              onTap: () {
                // Handle link tap
                // Add your desired functionality here, such as navigating to a specific page or performing an action
              },
              child: const Text(
                'No device found?',
                style: TextStyle(
                  color: Color(0xff305CCF), // Set the text color to blue for the link
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                  decoration: TextDecoration
                      .underline, // Add underline decoration to indicate it's a link
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}

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
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const BackButton(
          color: Colors.black, // Set the back icon color to black
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Expanded(
              child: ListView(
                physics: const BouncingScrollPhysics(),
                children: [
                  Center(
                    child: Image.asset("assets/images/Jam2.png", scale: 1.2),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 250,
              left: 50.0,
              right: 50.0,
              child: Column(
                children: [
                  Text(
                    "Alwatzher Series 1",
                    style: GoogleFonts.inter(
                        textStyle: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500)),
                  ),
                  Text(
                    "xx:xx:xx:xx",
                    style: GoogleFonts.inter(
                        textStyle: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500)),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 120.0, // Adjust the top positioning as needed
              left: 16.0, // Adjust the left positioning as needed
              right: 16.0, // Adjust the right positioning as needed
              child: SizedBox(
                width: 280,
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
              bottom: 80.0, // Adjust the top positioning as needed
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
                    color: Color(
                        0xff305CCF), // Set the text color to blue for the link
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
      ),
    );
  }
}

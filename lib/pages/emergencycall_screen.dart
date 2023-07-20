import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jam/pages/home_screen.dart';
import 'package:jam/pages/splashemergencycall_screen.dart';

class EmergencyScreen extends StatefulWidget {
  const EmergencyScreen({super.key});

  @override
  State<EmergencyScreen> createState() => _EmergencyScreenState();
}

class _EmergencyScreenState extends State<EmergencyScreen> {
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
                left: 160.0,
                child: Text(
                  'Calling...',
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
                    color: Color(0xff808080),
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
              Positioned(
                top: 690.0,
                left: 175.0,
                child: InkWell(
                  onTap: () {
                    // Fungsi ini akan dipanggil ketika tombol di tekan
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            SplashEmergencyScreen(), // Ganti AnotherPage() dengan halaman tujuan yang sesuai
                      ),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.red,
                    ),
                    padding: EdgeInsets.all(15.0),
                    child: Icon(
                      Icons.call_end_rounded,
                      color: Colors.white,
                      size: 30,
                    ),
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

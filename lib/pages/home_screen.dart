import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Image.asset(
              'assets/images/top.png', // Gambar di bagian atas halaman
              fit: BoxFit.cover,
              // height: MediaQuery.of(context).size.height * 0.1,
            ),
          ),
          //app bar
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              children: [
                Column(
                  children: [
                    Image.asset(assets/images/),
                    Text(
                      'Welcome To Alwatzer',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(
                      'Do not make dementia an excuse for us to abandon our family',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

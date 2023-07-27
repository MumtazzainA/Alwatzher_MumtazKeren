import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jam/pages/emergency_call_screen.dart';

class MonitorScreen extends StatelessWidget {
  const MonitorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          extendBodyBehindAppBar:
              true, // Make the body extend behind the AppBar
          appBar: AppBar(
            backgroundColor:
                Colors.transparent, // Set the AppBar background to transparent
            elevation: 0, // Remove the shadow
            leading: BackButton(
              color: Colors.white, // Set the back icon color to black
            ),
          ),
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Container(
              width: 500,
              child: Image.asset(
                "assets/images/map2.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Positioned(
          top: 550,
          child: Container(
            width: 400,
            margin: EdgeInsets.symmetric(horizontal: 5),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              color: Colors.blue,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.home_rounded,
                  size: 40,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "500 m dari kediaman Mr. Arwandi",
                  style: GoogleFonts.dmSans(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                    decoration: TextDecoration.none,
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 600,
          child: Container(
            height: 300,
            width: 410,
            padding: const EdgeInsets.all(15),
            // margin: EdgeInsets.symmetric(horizontal: 5),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              color: Colors.white,
            ),
            child: Row(
              children: [
                Column(
                  children: [
                    Text(
                      "Mr. Arwandi",
                      style: GoogleFonts.dmSans(
                        fontSize: 23,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                        decoration: TextDecoration.none,
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      width: 85,
                      height: 85,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: const DecorationImage(
                          image: AssetImage("assets/images/Orang.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      width: 120,
                      height: 85,
                      child: Image.asset("assets/images/BPM2.png"),
                    ),
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: 120,
                      height: 17,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color.fromARGB(255, 225, 222, 222)),
                      child: Center(
                        child: Text(
                          "Aktivitas terbaru",
                          style: GoogleFonts.dmSans(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Text(
                          "06.00",
                          style: GoogleFonts.dmSans(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            decoration: TextDecoration.none,
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          "Olahraga Pagi",
                          style: GoogleFonts.dmSans(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            decoration: TextDecoration.none,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: 120,
                      height: 17,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color.fromARGB(255, 225, 222, 222)),
                      child: Center(
                        child: Text(
                          "Aktivitas terdekat",
                          style: GoogleFonts.dmSans(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Text(
                          "07.00",
                          style: GoogleFonts.dmSans(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            decoration: TextDecoration.none,
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          "Minum Obat",
                          style: GoogleFonts.dmSans(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            decoration: TextDecoration.none,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: 120,
                      height: 17,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color.fromARGB(255, 225, 222, 222)),
                      child: Center(
                        child: Text(
                          "Lokasi terkini",
                          style: GoogleFonts.dmSans(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: 210,
                      child: Text(
                        "Jalan Kh Hasym, Selatan Gapura",
                        style: GoogleFonts.dmSans(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          right: 8,
          child: Container(
            height: 50,
            width: 50,
            // margin: EdgeInsets.symmetric(horizontal: 5),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(40),
              ),
              color: Colors.red,
            ),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EmergencyScreen()),
                );
              },
              child: Icon(Icons.phone),
            ),
          ),
        ),
      ],
    );
  }
}

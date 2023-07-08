import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ConnectScreen extends StatefulWidget {
  const ConnectScreen({super.key});

  @override
  State<ConnectScreen> createState() => _ConnectScreenState();
}

class _ConnectScreenState extends State<ConnectScreen> {
  int _currentIndex = 0;
  List<Color> catColors = [
    Color(0xff68B2DB),
    Color(0xff7C6DDB),
    Color(0xffDD7D7D),
    Color(0xff79C378),
    Color(0xff526CC8),
    Color(0xffF3F574),
  ];

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
              top: 12.5,
              left: 45.0,
              child: Text(
                'Add Device',
                style: GoogleFonts.inter(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500, // "Medium" weight
                ),
              ),
            ),
            Positioned(
              top: 60,
              left: 25.0,
              child: Text(
                'SmartWatch',
                style: GoogleFonts.inter(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey[400] // "Medium" weight
                    ),
              ),
            ),
            Positioned(
              top: 16.0,
              right: 25.0,
              child: GestureDetector(
                onTap: () {
                  // Handle button tap
                  // Add your desired functionality here
                },
                child: SizedBox(
                  width: 16.01,
                  height: 15.0,
                  child: Image.asset(
                    'assets/images/refresh.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 130.0,
              left:25.0 ,
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
              top: 140.0,
              left: 100.0,
              child: Text(
                'Alwatzher Series 1',
                style: GoogleFonts.inter(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,// "Medium" weight
                    ),
              ),
            ),
             Positioned(
              top: 143.0,
              right:30.0,
              child: GestureDetector(
                onTap: () {
                  // Handle button tap
                  // Add your desired functionality here
                },
                child: SizedBox(
                  width: 16.01,
                  height: 15.0,
                  child: Image.asset(
                    'assets/images/Vector.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
             
             Positioned(
              top: 200.0,
              left:25.0 ,
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
              top: 210.0,
              left: 100.0,
              child: Text(
                'Alwatzher Series 2',
                style: GoogleFonts.inter(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,// "Medium" weight
                    ),
              ),
            ),
             Positioned(
              top: 213.0,
              right:30.0,
              child: GestureDetector(
                onTap: () {
                  // Handle button tap
                  // Add your desired functionality here
                },
                child: SizedBox(
                  width: 16.01,
                  height: 15.0,
                  child: Image.asset(
                    'assets/images/Vector.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 270.0,
              left:25.0 ,
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
              top: 280.0,
              left: 100.0,
              child: Text(
                'Alwatzher Series 3',
                style: GoogleFonts.inter(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,// "Medium" weight
                    ),
              ),
            ),
             Positioned(
              top: 293.0,
              right:30.0,
              child: GestureDetector(
                onTap: () {
                  // Handle button tap
                  // Add your desired functionality here
                },
                child: SizedBox(
                  width: 16.01,
                  height: 15.0,
                  child: Image.asset(
                    'assets/images/Vector.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 340.0,
              left:25.0 ,
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
              top: 350.0,
              left: 100.0,
              child: Text(
                'Alwatzher Series 4',
                style: GoogleFonts.inter(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,// "Medium" weight
                    ),
              ),
            ),
             Positioned(
              top: 363.0,
              right:30.0,
              child: GestureDetector(
                onTap: () {
                  // Handle button tap
                  // Add your desired functionality here
                },
                child: SizedBox(
                  width: 16.01,
                  height: 15.0,
                  child: Image.asset(
                    'assets/images/Vector.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 410.0,
              left:25.0 ,
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
              top: 420.0,
              left: 100.0,
              child: Text(
                'Alwatzher Series 5',
                style: GoogleFonts.inter(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,// "Medium" weight
                    ),
              ),
            ),
             Positioned(
              top: 433.0,
              right:30.0,
              child: GestureDetector(
                onTap: () {
                  // Handle button tap
                  // Add your desired functionality here
                },
                child: SizedBox(
                  width: 16.01,
                  height: 15.0,
                  child: Image.asset(
                    'assets/images/Vector.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          showUnselectedLabels: true,
          iconSize: 25,
          selectedItemColor: Color(0xff526CC8),
          selectedFontSize: 15,
          unselectedFontSize: 10,
          unselectedItemColor: Colors.grey,
          currentIndex: _currentIndex,
          onTap: (int index) {
            setState(() {
              _currentIndex = index;
            });

            // Logika penanganan ketika item ditekan
            switch (index) {
              case 0:
                // Ketika item "Home" ditekan
                Navigator.pushNamed(context, '/home');
                break;
              case 1:
                // Ketika item "Setting" ditekan
                Navigator.pushNamed(context, '/setting');
                break;
              case 2:
                // Ketika item "Monitor" ditekan
                Navigator.pushNamed(context, '/monitor');
                break;
              case 3:
                // Ketika item "Watch" ditekan
                Navigator.pushNamed(context, '/watch');
                break;
              case 4:
                // Ketika item "Profile" ditekan
                Navigator.pushNamed(context, '/profile');
                break;
            }
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Setting'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_pin_circle, color: Colors.red),
                label: 'Monitor'),
            BottomNavigationBarItem(icon: Icon(Icons.watch), label: 'Watch'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ],
        ),
      ),
    );
  }
}

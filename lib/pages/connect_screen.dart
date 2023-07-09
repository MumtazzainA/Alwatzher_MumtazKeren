import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jam/pages/connect2_screen.dart';

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
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Add Device',
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),
        leading: BackButton(
          color: Colors.black, // Set the back icon color to black
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.refresh,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          Positioned(
            top: 20,
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
          Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 15),
                const SizedBox(
                  height: 20,
                ),
                ListTile(
                  leading: Container(
                    child: Icon(
                      Icons.watch,
                      color: Colors.black,
                    ),
                  ),
                  title: Text(
                    'Alwatzher Series 1',
                    style: GoogleFonts.inter(
                        textStyle: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500)),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Connect2Screen()),
                    );
                  },
                  trailing: Container(
                    child: const Icon(Icons.arrow_forward_ios),
                  ),
                ),
                ListTile(
                  leading: Container(
                    child: Icon(Icons.watch, color: Colors.black),
                  ),
                  title: Text(
                    'Alwatzher Series 2',
                    style: GoogleFonts.inter(
                        textStyle: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500)),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Connect2Screen()),
                    );
                  },
                  trailing: Container(
                    child: const Icon(Icons.arrow_forward_ios),
                  ),
                ),
              ],
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
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Setting'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_pin_circle, color: Colors.red),
              label: 'Monitor'),
          BottomNavigationBarItem(icon: Icon(Icons.watch), label: 'Watch'),
          // BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}

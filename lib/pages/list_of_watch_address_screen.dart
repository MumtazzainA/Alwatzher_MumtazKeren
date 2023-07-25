import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jam/pages/setting_watch_profile_screen.dart';

class AddressListFeature extends StatefulWidget {
  const AddressListFeature({super.key});

  @override
  State<AddressListFeature> createState() => _ListScreenState();
}

class _ListScreenState extends State<AddressListFeature> {
  int _currentIndex = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: BackButton(
          color: Colors.black, // Set the back icon color to black
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(0),
          child: Column(
            children: [
              Stack(
                children: [
                  SizedBox(
                    width: 100,
                    height: 100,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(80),
                      child: const CircleAvatar(
                        backgroundImage: AssetImage("assets/images/Logo.png"),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Text(
                "Watch List",
                style: GoogleFonts.poppins(
                  textStyle:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
              ),
              const Divider(),
              Padding(
                padding: EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      leading: Container(
                        child: Icon(
                          Icons.watch,
                          color: Colors.black,
                        ),
                      ),
                      title: Text(
                        'Arwandi\'s Alwatzer',
                        style: GoogleFonts.inter(
                            textStyle: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500)),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  SettingWatchProfileScreen()),
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
                        'Alwatzer Series 2',
                        style: GoogleFonts.inter(
                            textStyle: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500)),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  SettingWatchProfileScreen()),
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
        ),
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

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jam/pages/connect_screen.dart';
import 'package:jam/pages/information_screen.dart';
import 'package:jam/pages/list_of_question_screen.dart';
import 'package:jam/pages/list_of_reminder_feature_screen.dart';
import 'package:jam/pages/list_of_watch_address_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  int _currentIndex2 = 0;
  List catNames = [
    "Connect",
    'Ask Alwatzer',
    'Reminder',
    'Information',
    'Emergency Call',
    'Address',
  ];
  List<Color> catColors = [
    Color(0xff68B2DB),
    Color(0xff7C6DDB),
    Color(0xffDD7D7D),
    Color(0xff79C378),
    Color(0xff526CC8),
    Color(0xffF3F574),
  ];
  List<Icon> catIcons = [
    Icon(
      Icons.watch,
      color: Colors.black,
      size: 30,
    ),
    Icon(
      Icons.question_mark,
      color: Colors.black,
      size: 30,
    ),
    Icon(
      Icons.alarm,
      color: Colors.black,
      size: 30,
    ),
    Icon(
      Icons.info_outline,
      color: Colors.black,
      size: 30,
    ),
    Icon(
      Icons.phone,
      color: Colors.black,
      size: 30,
    ),
    Icon(
      Icons.room_sharp,
      color: Colors.black,
      size: 30,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Container(
                child: Image.asset(
                  'assets/images/top.png', // Gambar di bagian atas halaman
                  fit: BoxFit.cover,
                  // height: MediaQuery.of(context).size.height * 0.1,
                ),
              ),
            ),
            Column(
              children: [
                //app bar
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 25.0, vertical: 70),
                  child: Column(
                    children: [
                      Column(
                        children: [
                          Image.asset(
                            "assets/images/LogoHome.png", //Logo dashboard
                            width: 81,
                            height: 77,
                          ),
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
                            'Dementia Is Not a Hindrance To Freedom',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 500,
                  height: 250,
                  child: Image.asset(
                    'assets/images/map_image.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  child: Padding(
                    padding: EdgeInsets.only(top: 35, left: 15, right: 15),
                    child: Column(
                      children: [
                        GridView.builder(
                          itemCount: catNames.length,
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            childAspectRatio: 1.1,
                          ),
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                setState(() {
                                  _currentIndex2 = index;
                                });
                                switch (index) {
                                  case 0:
                                    // Ketika item "Connect" ditekan
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              ConnectScreen()),
                                    );
                                    break;
                                  case 1:
                                    // Ketika item "Ask" ditekan
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              QuestionListScreen()),
                                    );
                                    break;
                                  case 2:
                                    // Ketika item "Reminder" ditekan
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              ReminderListScreen()),
                                    );
                                    break;
                                  case 3:
                                    // Ketika item "Information" ditekan
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              InformationScreen()),
                                    );
                                    break;
                                  // case 4:
                                  //   // Ketika item "Emergency" ditekan
                                  //   Navigator.push(
                                  //     context,
                                  //     MaterialPageRoute(
                                  //         builder: (context) => ConnectScreen()),
                                  //   );
                                  //   break;
                                  case 5:
                                    // Ketika item "Address" ditekan
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              AddressListFeature()),
                                    );
                                    break;
                                }
                              },
                              child: Column(
                                children: [
                                  Container(
                                    height: 60,
                                    width: 60,
                                    decoration: BoxDecoration(
                                      color: catColors[index],
                                      shape: BoxShape.circle,
                                    ),
                                    child: Center(child: catIcons[index]),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    catNames[index],
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
                                    ),
                                  )
                                ],
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
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
                //Navigator.pushNamed(context, '/monitor');
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
            // BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ],
        ),
      ),
    );
  }
}

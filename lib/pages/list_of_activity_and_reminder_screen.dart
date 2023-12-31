import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jam/clipPath/clippath_activity_box.dart';
import 'package:jam/pages/set_activity_screen.dart';
import 'package:jam/pages/set_reminder_screen.dart';
import 'package:jam/switch%20button/switch_button.dart';

import '../data/reminder_data.dart';

class ListActivityFeatureScreen extends StatefulWidget {
  const ListActivityFeatureScreen({super.key});

  @override
  State<ListActivityFeatureScreen> createState() =>
      _ListActivityFeatureScreenState();
}

class _ListActivityFeatureScreenState extends State<ListActivityFeatureScreen> {
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
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    Center(
                      child: Image.asset(
                        "assets/images/LogoHome.png", //Logo dashboard
                        width: 81,
                        height: 77,
                      ),
                    ),
                  ],
                ),
              ),
              //activity list
              Container(
                height: 250,
                child: Expanded(
                  child: ListView(
                    children: reminders.map((reminder) {
                      return Container(
                        margin: EdgeInsets.only(
                              top: 30,
                            ) +
                            EdgeInsets.symmetric(horizontal: 15),
                        padding: EdgeInsets.all(15),
                        height: 195,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.5),
                              // spreadRadius: 2,
                              blurRadius: 5,
                              offset: Offset(0, 4),
                            ),
                          ],
                        ),
                        child: Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Positioned(
                                  left: 23,
                                  top: 11,
                                  child: Align(
                                    child: SizedBox(
                                      width: 63,
                                      height: 42,
                                      child: Text(
                                        'Activity Record',
                                        style: GoogleFonts.dmSans(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                          height: 1.3025,
                                          color: Color(0xff1b2559),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.fromLTRB(0, 0, 37.26, 0),
                                  width: 100,
                                  height: 28,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(46),
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        margin:
                                            EdgeInsets.fromLTRB(0, 0.04, 4, 0),
                                        width: 12,
                                        height: 12,
                                        child: Icon(
                                          Icons.check_circle,
                                          color: Colors.green,
                                          size: 15,
                                        ),
                                      ),
                                      Text(
                                        'On track',
                                        style: GoogleFonts.dmSans(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w700,
                                          height: 2,
                                          letterSpacing: -0.2,
                                          color: Color(0xff05cd99),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.light_mode,
                                        color: Colors.yellow,
                                        size: 40,
                                      ),
                                      Column(
                                        children: [
                                          Text(
                                            "82%",
                                            style: GoogleFonts.dmSans(
                                              fontSize: 24,
                                              fontWeight: FontWeight.w700,
                                              height: 1.6,
                                              color: Colors.black,
                                            ),
                                          ),
                                          Text(
                                            "of your goal",
                                            style: GoogleFonts.dmSans(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w700,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    RichText(
                                      text: TextSpan(
                                        text: "1",
                                        style: GoogleFonts.dmSans(
                                          fontSize: 28,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                        children: [
                                          TextSpan(
                                            text: "hrs",
                                            style: GoogleFonts.dmSans(
                                              fontSize: 12,
                                              height: 2.5,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                            ),
                                          ),
                                          TextSpan(
                                            text: "30",
                                            style: GoogleFonts.dmSans(
                                              fontSize: 28,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                            ),
                                          ),
                                          TextSpan(
                                            text: "min",
                                            style: GoogleFonts.dmSans(
                                              fontSize: 12,
                                              height: 2.5,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Positioned(
                                  child: Text(
                                    "Activity goal",
                                    style: GoogleFonts.dmSans(
                                      fontSize: 16,
                                      height: 2.5,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              SetActivityScreen()),
                                    );
                                  },
                                  child: Text(
                                    "Set activity hour",
                                    style: GoogleFonts.dmSans(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(0xff4C88EC),
                                  ),
                                ),
                                SizedBox(
                                  width: 70,
                                ),
                                Container(
                                  constraints: BoxConstraints(
                                    maxWidth: 122,
                                  ),
                                  child: Text(
                                    'This can be set under your bedtime goal',
                                    style: GoogleFonts.dmSans(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w400,
                                      height: 1.3025,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),
              //button
              Container(
                height: 30,
                child: Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SetActivityScreen()),
                      );
                    },
                    child: SizedBox(
                      width: 40.0,
                      height: 40.0,
                      child: Icon(
                        Icons.add_circle,
                        size: 40,
                        color: Color(0xff4C88EC),
                      ),
                    ),
                  ),
                ),
              ),
              //reminder name
              Container(
                padding: EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Reminder",
                      style: GoogleFonts.dmSans(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    Icon(Icons.more_vert)
                  ],
                ),
              ),
              //reminder list
              Container(
                height: 220,
                child: Expanded(
                  child: ListView(
                    children: reminders.map((reminder) {
                      return InkWell(
                        onTap: () {
                          // Implement your navigation logic here.
                          // For example, navigate to a different page:
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  SetReminderScreen(),
                            ),
                          );
                        },
                        child: Container(
                          padding: EdgeInsets.all(15),
                          margin: EdgeInsets.symmetric(horizontal: 15) +
                              EdgeInsets.only(bottom: 20),
                          height: 100,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.5),
                                // spreadRadius: 2,
                                blurRadius: 5,
                                offset: Offset(0, 4),
                              ),
                            ],
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  RichText(
                                    text: TextSpan(
                                      text: "06:00",
                                      style: GoogleFonts.dmSans(
                                        fontSize: 28,
                                        fontWeight: FontWeight.w500,
                                        height: 1.3025,
                                        color: Color.fromARGB(255, 0, 0, 0),
                                      ),
                                      children: [
                                        TextSpan(
                                          text: "am",
                                          style: GoogleFonts.dmSans(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            height: 1.3025,
                                            color: Color.fromARGB(255, 0, 0, 0),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Text(
                                    "M T W F S S",
                                    style: GoogleFonts.dmSans(
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal,
                                      height: 2,
                                      letterSpacing: 2,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                '(Take Medicine)',
                                style: GoogleFonts.dmSans(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  height: 2,
                                  letterSpacing: -0.2,
                                  color: Colors.black,
                                ),
                              ),
                              SwitchButton(),
                            ],
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),
              //button
              Container(
                height: 30,
                child: Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SetReminderScreen()),
                      );
                    },
                    child: SizedBox(
                      width: 40.0,
                      height: 40.0,
                      child: Icon(
                        Icons.add_circle,
                        size: 40,
                        color: Color(0xff4C88EC),
                      ),
                    ),
                  ),
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

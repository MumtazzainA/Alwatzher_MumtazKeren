import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:numberpicker/numberpicker.dart';

import '../switch button/switch_button.dart';

class SetReminderScreen extends StatefulWidget {
  const SetReminderScreen({super.key});

  @override
  State<SetReminderScreen> createState() => _SetReminderScreenState();
}

class _SetReminderScreenState extends State<SetReminderScreen> {
  Set<int> selectedIndices = {};
  var hour = 0;
  var minute = 0;
  var timeFormat = "am";
  int _currentIndex = 3;
  TextEditingController alarmNameController = TextEditingController();
  @override
  void dispose() {
    alarmNameController.dispose();
    super.dispose();
  }

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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(
              height: 5,
            ),
            Container(
              height: 250,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(10),
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
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  NumberPicker(
                    minValue: 0,
                    maxValue: 12,
                    value: hour,
                    infiniteLoop: true,
                    zeroPad: true,
                    itemWidth: 80,
                    itemHeight: 80,
                    onChanged: (value) {
                      setState(() {
                        hour = value;
                      });
                    },
                    textStyle:
                        GoogleFonts.dmSans(color: Colors.grey, fontSize: 35),
                    selectedTextStyle:
                        GoogleFonts.dmSans(color: Colors.black, fontSize: 40),
                  ),
                  Text(
                    ":",
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          fontWeight: FontWeight.normal, fontSize: 40),
                    ),
                  ),
                  NumberPicker(
                    minValue: 0,
                    maxValue: 12,
                    value: minute,
                    infiniteLoop: true,
                    zeroPad: true,
                    itemWidth: 80,
                    itemHeight: 80,
                    onChanged: (value) {
                      setState(() {
                        minute = value;
                      });
                    },
                    textStyle:
                        GoogleFonts.dmSans(color: Colors.grey, fontSize: 35),
                    selectedTextStyle:
                        GoogleFonts.dmSans(color: Colors.black, fontSize: 40),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 70,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            timeFormat = "am";
                          });
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 1),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Text(
                            "am",
                            style: GoogleFonts.dmSans(
                              textStyle: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 30,
                                  color: timeFormat == "am"
                                      ? Colors.black
                                      : Colors.grey),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            timeFormat = "pm";
                          });
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 1),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Text(
                            "pm",
                            style: GoogleFonts.dmSans(
                              textStyle: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 30,
                                  color: timeFormat == "pm"
                                      ? Colors.black
                                      : Colors.grey),
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Tomorrow - Sat, 4 Dec",
                  style: GoogleFonts.dmSans(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 16,
                    ),
                  ),
                ),
                Icon(Icons.calendar_month)
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildDayItem("M", 0),
                _buildDayItem("T", 1),
                _buildDayItem("W", 2),
                _buildDayItem("T", 3),
                _buildDayItem("F", 4),
                _buildDayItem("S", 5),
                _buildDayItem("S", 6),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            //Reminder name
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 19),
              padding: EdgeInsets.fromLTRB(12, 0, 12, 0),
              height: 40,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xffa8a8a8)),
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextFormField(
                controller: alarmNameController,
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff000000),
                  ),
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Reminder name',
                  hintStyle: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      height: 1.5,
                      color: Color(0xffa8a8a8),
                    ),
                  ),
                ),
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    height: 70,
                    // decoration: BoxDecoration(
                    //   border: Border.all(color: Colors.white),
                    //   borderRadius: BorderRadius.all(Radius.circular(20)),
                    //   color: Colors.white,
                    //   boxShadow: [
                    //     BoxShadow(
                    //       color: Colors.black.withOpacity(0.5),
                    //       // spreadRadius: 2,
                    //       blurRadius: 5,
                    //       offset: Offset(0, 1),
                    //     ),
                    //   ],
                    // ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment
                              .start, // Align text to the start (left)
                          mainAxisSize: MainAxisSize
                              .min, // Minimize the height of the Column
                          crossAxisAlignment: CrossAxisAlignment.start, // Ali
                          children: [
                            Text(
                              "Alarm sound",
                              style: GoogleFonts.dmSans(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color.fromARGB(255, 0, 0, 0),
                              ),
                            ),
                            Text(
                              "Homecoming",
                              style: GoogleFonts.dmSans(
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                                color: Colors.blue,
                              ),
                            ),
                          ],
                        ),
                        SwitchButton(),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),

                    height: 70,
                    // decoration: BoxDecoration(
                    //   border: Border.all(color: Colors.white),
                    //   borderRadius: BorderRadius.all(Radius.circular(20)),
                    //   color: Colors.white,
                    //   boxShadow: [
                    //     BoxShadow(
                    //       color: Colors.black.withOpacity(0.5),
                    //       // spreadRadius: 2,
                    //       blurRadius: 5,
                    //       offset: Offset(0, 1),
                    //     ),
                    //   ],
                    // ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment
                              .start, // Align text to the start (left)
                          mainAxisSize: MainAxisSize
                              .min, // Minimize the height of the Column
                          crossAxisAlignment: CrossAxisAlignment.start, // Ali
                          children: [
                            Text(
                              "Vibration",
                              style: GoogleFonts.dmSans(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color.fromARGB(255, 0, 0, 0),
                              ),
                            ),
                            Text(
                              "Basic call",
                              style: GoogleFonts.dmSans(
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                                color: Colors.blue,
                              ),
                            ),
                          ],
                        ),
                        SwitchButton(),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),

                    height: 70,
                    // decoration: BoxDecoration(
                    //   border: Border.all(color: Colors.white),
                    //   borderRadius: BorderRadius.all(Radius.circular(20)),
                    //   color: Colors.white,
                    //   boxShadow: [
                    //     BoxShadow(
                    //       color: Colors.black.withOpacity(0.5),
                    //       // spreadRadius: 2,
                    //       blurRadius: 5,
                    //       offset: Offset(0, 1),
                    //     ),
                    //   ],
                    // ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment
                              .start, // Align text to the start (left)
                          mainAxisSize: MainAxisSize
                              .min, // Minimize the height of the Column
                          crossAxisAlignment: CrossAxisAlignment.start, // Ali
                          children: [
                            Text(
                              "Snooze",
                              style: GoogleFonts.dmSans(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color.fromARGB(255, 0, 0, 0),
                              ),
                            ),
                            Text(
                              "5 minutes, 3 times",
                              style: GoogleFonts.dmSans(
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                                color: Colors.blue,
                              ),
                            ),
                          ],
                        ),
                        SwitchButton(),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),

                    height: 70,
                    // decoration: BoxDecoration(
                    //   border: Border.all(color: Colors.white),
                    //   borderRadius: BorderRadius.all(Radius.circular(20)),
                    //   color: Colors.white,
                    //   boxShadow: [
                    //     BoxShadow(
                    //       color: Colors.black.withOpacity(0.5),
                    //       // spreadRadius: 2,
                    //       blurRadius: 5,
                    //       offset: Offset(0, 1),
                    //     ),
                    //   ],
                    // ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment
                              .start, // Align text to the start (left)
                          mainAxisSize: MainAxisSize
                              .min, // Minimize the height of the Column
                          crossAxisAlignment: CrossAxisAlignment.start, // Ali
                          children: [
                            Text(
                              "Instruction",
                              style: GoogleFonts.dmSans(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color.fromARGB(255, 0, 0, 0),
                              ),
                            ),
                            Text(
                              "Instruction",
                              style: GoogleFonts.dmSans(
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                                color: Colors.blue,
                              ),
                            ),
                          ],
                        ),
                        SwitchButton(),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
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

  Widget _buildDayItem(String dayText, int index) {
    bool isSelected = selectedIndices.contains(index);
    bool isLastLetter = index == 6;
    return GestureDetector(
      onTap: () {
        setState(() {
          if (isSelected) {
            selectedIndices.remove(index);
          } else {
            selectedIndices.add(index);
          }
        });
      },
      child: Container(
        width: 35,
        height: 35,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isSelected ? Colors.blue : Colors.transparent,
        ),
        child: Center(
          child: Text(
            dayText,
            style: GoogleFonts.dmSans(
              textStyle: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 16,
                color: isLastLetter && !isSelected
                    ? Colors.red
                    : isSelected
                        ? Colors.white
                        : Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

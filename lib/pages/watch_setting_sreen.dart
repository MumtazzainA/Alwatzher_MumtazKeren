import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:jam/controller/picture_controller.dart';
import 'package:jam/pages/add_question.dart';
import 'package:jam/pages/list_of_question_screen.dart';
import 'package:jam/pages/setting_profile_screen.dart';
import 'package:jam/pages/setting_watch_profile_screen.dart';

import 'list_of_activity_and_reminder_screen.dart';

class WatchSettingScreen extends StatefulWidget {
  WatchSettingScreen({super.key});

  @override
  State<WatchSettingScreen> createState() => _WatchSettingScreenState();
}

class _WatchSettingScreenState extends State<WatchSettingScreen> {
  File? pickedFile;

  ImagePicker imagePicker = ImagePicker();

  PictureController pictureController = Get.put(PictureController());

  int _currentIndex = 3;

  @override
  Widget build(BuildContext context) {
    var isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;
    return Scaffold(
      // body: Container(
      //   color: Color(0xff4C88EC),
      //   height: 100,
      // ),
      //App Bar
      appBar: AppBar(
        backgroundColor: Color(0xff4C88EC),
        title: Text(
          'Setting',
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(30.0),
          child: Column(children: [
            Stack(
              children: [
                SizedBox(
                  width: 120,
                  height: 120,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Obx(
                      () => CircleAvatar(
                        backgroundImage: pictureController
                                    .isProficPicPathSet.value ==
                                true
                            ? FileImage(
                                File(pictureController.profilePicPath.value),
                              ) as ImageProvider
                            : AssetImage("assets/images/Logo.png"),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: InkWell(
                    child: Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Color(0xff4C88EC),
                      ),
                      child: const Icon(
                        Icons.create_sharp,
                        color: Colors.black,
                        size: 20,
                      ),
                    ),
                    onTap: () {
                      print("Camera clicked");
                      showModalBottomSheet(
                          context: context,
                          builder: (context) => bottomSheet(context));
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Text(
              "Mr. Arwandi",
              style: GoogleFonts.poppins(
                textStyle: TextStyle(fontWeight: FontWeight.normal),
              ),
            ),
            const SizedBox(height: 15),
            const SizedBox(
              height: 20,
            ),
            const Divider(),
            Padding(
              padding: EdgeInsets.all(0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Edit Profile',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Container(
                      child: Icon(Icons.person),
                    ),
                    title: Text('Profile'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SettingWatchProfileScreen()),
                      );
                    },
                    trailing: Container(
                      child: const Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                  Divider(),
                  Text(
                    'Fitur',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Container(
                      child: Icon(Icons.help),
                    ),
                    title: Text('Ask Alwatzer'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => QuestionListScreen()),
                      );
                    },
                    trailing: Container(
                      child: const Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                  ListTile(
                    leading: Container(
                      child: Icon(Icons.alarm_add),
                    ),
                    title: Text('Alarm & Activity'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ListActivityFeatureScreen()),
                      );
                    },
                    trailing: Container(
                      child: const Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                ],
              ),
            ),
          ]),
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

  Widget bottomSheet(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height * 0.2,
      margin: const EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 10,
      ),
      child: Column(
        children: [
          const Text(
            "Choose Profile Picture",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.image),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Gallery",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                onTap: () {
                  takePhoto(ImageSource.gallery);
                },
              ),
              const SizedBox(
                width: 80,
              ),
              InkWell(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.camera),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Camera",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                onTap: () {
                  takePhoto(ImageSource.camera);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

  Future<void> takePhoto(ImageSource source) async {
    final pickedImage =
        await imagePicker.pickImage(source: source, imageQuality: 100);

    pickedFile = File(pickedImage!.path);
    pictureController.setProfileImagePatch(pickedFile!.path);
    Get.back();

    // print(pickedFile);
  }
}

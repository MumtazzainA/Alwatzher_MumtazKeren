import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:jam/pages/list_of_watch_address_screen.dart';
import '../controller/picture_controller.dart';

class SettingWatchProfileScreen extends StatefulWidget {
  const SettingWatchProfileScreen({super.key});

  @override
  State<SettingWatchProfileScreen> createState() =>
      _SettingProfileScreenState();
}

class _SettingProfileScreenState extends State<SettingWatchProfileScreen> {
  File? pickedFile;

  ImagePicker imagePicker = ImagePicker();

  PictureController pictureController = Get.put(PictureController());

  int _currentIndex = 1;

  TextEditingController usernameController = TextEditingController();
  TextEditingController patientNameController = TextEditingController();
  TextEditingController emergencyPhoneNumberController =
      TextEditingController();
  TextEditingController addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff4C88EC),
        title: Text(
          'Profile',
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
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
              Container(
                // padding: EdgeInsets.fromLTRB(1, 2, 1, 0),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 2),
                      child: Text(
                        'Username',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            height: 1.5,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 19),
                      padding: EdgeInsets.fromLTRB(12, 11, 12, 11),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffa8a8a8)),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: TextFormField(
                        controller: usernameController,
                        decoration: InputDecoration.collapsed(
                          hintText: 'Arwandi Fam',
                          hintStyle: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            height: 1.5,
                            color: Color(0xff000000),
                          ),
                        ),
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          height: 1.5,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 2),
                      child: Text(
                        'Patient Name',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            height: 1.5,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 16),
                      padding: EdgeInsets.fromLTRB(12, 10, 12, 12),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffa8a8a8)),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: TextFormField(
                        controller: patientNameController,
                        decoration: InputDecoration.collapsed(
                          hintText: 'Arwandi',
                          hintStyle: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            height: 1.5,
                            color: Color(0xff000000),
                          ),
                        ),
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          height: 1.5,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
                      child: Text(
                        'Emergency Phone Number',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            height: 1.5,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 19),
                      padding: EdgeInsets.fromLTRB(12, 11, 12, 11),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffa8a8a8)),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: TextFormField(
                        controller: emergencyPhoneNumberController,
                        decoration: InputDecoration.collapsed(
                          hintText: '+628123456789',
                          hintStyle: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            height: 1.5,
                            color: Color(0xff000000),
                          ),
                        ),
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          height: 1.5,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 2),
                      child: Text(
                        'Address',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            height: 1.5,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 65),
                      padding: EdgeInsets.fromLTRB(12, 11, 12, 11),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffa8a8a8)),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: TextFormField(
                        controller: addressController,
                        decoration: InputDecoration.collapsed(
                          hintText: 'Jl. Sukamaju Nomor 10',
                          hintStyle: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            height: 1.5,
                            color: Color(0xff000000),
                          ),
                        ),
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          height: 1.5,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(38, 0, 37, 125),
                      width: double.infinity,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Color(0xff4c88ec),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AddressListFeature()),
                            );
                          },
                          child: Text(
                            'Update',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                                height: 1.5,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
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

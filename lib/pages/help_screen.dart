import 'package:flutter/material.dart';
import 'package:jam/pages/connect2_screen.dart';

class HelpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff4C88EC),
        title: Text(
          'Help',
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            padding: const EdgeInsets.fromLTRB(20, 30, 40, 200),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xffffffff),
            ),
            child: FittedBox(
              alignment: Alignment.topLeft,
              fit: BoxFit.scaleDown,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 30),
                  Container(
                    margin: const EdgeInsets.only(right: 60),
                    constraints: const BoxConstraints(maxWidth: 560),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.only(left: 80),
                          child: const Text(
                            'Please make sure',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 60,
                              fontWeight: FontWeight.w500,
                              height: 2,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        const SizedBox(height: 30),
                        HelpText(
                          number: '1',
                          text:
                              'The watch and mobile phone are within 5 meters',
                        ),
                        HelpText(
                          number: '2',
                          text: 'The watch has electricity',
                        ),
                        HelpText(
                          number: '3',
                          text:
                              'No other cell phone is connected to the watch before',
                        ),
                        HelpText(
                          number: '4',
                          text: 'Try restarting the phone\'s Bluetooth',
                        ),
                        HelpText(
                          number: '5',
                          text: 'Try restarting the phone',
                        ),
                        HelpText(
                          number: '6',
                          text: 'Try restarting the watch',
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 300),
                  Align(
                    alignment: Alignment.center,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Connect2Screen()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xff496ade),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        minimumSize: Size(680, 120),
                      ),
                      child: Text(
                        'Okay!',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 40,
                          fontWeight: FontWeight.w500,
                          height: 1.2,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class HelpText extends StatelessWidget {
  final String number;
  final String text;

  const HelpText({
    required this.number,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 80),
      child: Text(
        '$number. $text',
        style: TextStyle(
          fontFamily: 'Inter',
          fontSize: 30,
          fontWeight: FontWeight.w500,
          height: 2,
          color: Color(0xff000000),
        ),
      ),
    );
  }
}

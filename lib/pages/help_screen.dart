import 'package:flutter/material.dart';

class HelpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 10),
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(padding: EdgeInsets.zero),
                          child: SizedBox(
                            width: 30,
                            height: 60,
                            child: Image.asset(
                              'assets/images/back.png',
                              width: 30,
                              height: 60,
                            ),
                          ),
                        ),
                      ),
                      const Text(
                        'Help',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 36,
                          fontWeight: FontWeight.w500,
                          height: 1.2,
                          color: Color(0xff000000),
                        ),
                      ),
                    ],
                  ),
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
                        Padding(
                          padding: const EdgeInsets.only(left: 80),
                          child: const Text(
                            '1. The watch and mobile phone are within 5 meters',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 30,
                              fontWeight: FontWeight.w500,
                              height: 2,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.only(left: 80),
                          child: const Text(
                            '2. The watch has electricity',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 30,
                              fontWeight: FontWeight.w500,
                              height: 2,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.only(left: 80),
                          child: const Text(
                            '3. No other cell phone is connected to the watch before',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 30,
                              fontWeight: FontWeight.w500,
                              height: 2,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.only(left: 80),
                          child: const Text(
                            '4. Try restarting the phone\'s Bluetooth',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 30,
                              fontWeight: FontWeight.w500,
                              height: 2,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.only(left: 80),
                          child: const Text(
                            '5. Try restarting the phone',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 30,
                              fontWeight: FontWeight.w500,
                              height: 2,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.only(left: 80),
                          child: const Text(
                            '6. Try restarting the watch',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 30,
                              fontWeight: FontWeight.w500,
                              height: 2,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 300),
                  Container(
                    margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
                    width: 680,
                    height: 120,
                    decoration: BoxDecoration(
                      color: Color(0xff496ade),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: const Center(
                      child: Text(
                        'Okay!',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 24,
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



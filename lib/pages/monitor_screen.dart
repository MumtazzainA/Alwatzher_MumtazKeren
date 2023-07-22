import 'package:flutter/material.dart';

class MonitorScreen extends StatelessWidget {
  const MonitorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.amber,
          height: 300,
        ),
        Container(
          color: Colors.black,
        ),
      ],
    );
  }
}

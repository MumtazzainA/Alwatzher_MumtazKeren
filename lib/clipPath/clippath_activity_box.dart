import 'package:flutter/widgets.dart';

class ClipPathActivity extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double cornerRadius = 20.0;
    Path path = Path();

    path.moveTo(cornerRadius, 0);

    path.quadraticBezierTo(0, 0, cornerRadius, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) => false;
}

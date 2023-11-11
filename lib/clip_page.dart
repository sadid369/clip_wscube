import 'package:flutter/material.dart';

class ClipPage extends StatefulWidget {
  const ClipPage({Key? key}) : super(key: key);

  @override
  _ClipPageState createState() => _ClipPageState();
}

class _ClipPageState extends State<ClipPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Clip'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          width: double.infinity,
          height: 250,
          child: ClipPath(
            clipper: PathClipper(),
            child: Image.asset(
              'assets/images/tower-2.jpeg',
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}

class PathClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var mPath = Path();
    // mPath.moveTo(0, size.height);
    mPath.lineTo(size.width, 0);
    mPath.quadraticBezierTo(
        size.width * 0.8, size.height * 0.5, size.width, size.height);
    // mPath.lineTo(size.width, size.height);
    mPath.lineTo(size.width * 0.5, size.height);
    mPath.cubicTo(size.width * 0.2, size.height * 0.8, size.width * 0.3,
        size.height * 0.1, 0, 0);
    // mPath.lineTo(0, size.height * 0.5);
    // mPath.lineTo(0, size.height);
    // mPath.lineTo(0, size.height * 0.5);

    // mPath.close();
    return mPath;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

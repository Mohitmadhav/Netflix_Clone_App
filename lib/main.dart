import 'screens/Homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(NetflixClone());
}

class NetflixClone extends StatefulWidget {
  NetflixCloneState createState() => NetflixCloneState();
}

class NetflixCloneState extends State<NetflixClone> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

import 'package:flutter/material.dart';

class NetflixSearch extends StatefulWidget {
  @override
  _NetflixSearchState createState() => _NetflixSearchState();
}

class _NetflixSearchState extends State<NetflixSearch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Icon(Icons.search),
        title: TextField(
          decoration: InputDecoration(
            hintText: 'Search for a movie or show',
            hintStyle: TextStyle(color: Colors.white),
            suffixIcon: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.mic,
                color: Colors.grey,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

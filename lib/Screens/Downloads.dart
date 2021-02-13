import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class NetflixDownloads extends StatefulWidget {
  @override
  _NetflixDownloadsState createState() => _NetflixDownloadsState();
}

class _NetflixDownloadsState extends State<NetflixDownloads> {
  @override
  Widget build(BuildContext context) {
    final condition = 'ON';

    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        backgroundColor: Colors.black45,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.info_outline_rounded),
          color: Colors.white,
        ),
        title: Row(
          children: <Widget>[
            Text('Smart Downloads'),
            Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Text(
                condition,
                style: TextStyle(color: Colors.blueAccent),
              ),
            )
          ],
        ),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              Icon(
                Icons.download_rounded,
                size: 220,
                color: Colors.grey,
              ),
              Text(
                'TV shows and movies that\n you download appear here',
                style: TextStyle(
                    color: Colors.white, fontSize: 20, fontFamily: 'Arial'),
              ),
              Padding(
                padding: EdgeInsets.only(top: 50.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5)),
                  child: MaterialButton(
                    onPressed: () {},
                    child: Text(
                      'Find something to download',
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

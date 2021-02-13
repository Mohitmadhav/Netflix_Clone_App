import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'Downloads.dart';
import 'Search.dart';

class Home extends StatefulWidget {
  HomeState createState() => HomeState();
}

// ignore: missing_return
Widget show(int index) {
  switch (index) {
    case 0:
      return NetflixHome();
      break;
    case 1:
      return NetflixSearch();
      break;
    case 2:
      return NetflixDownloads();
      break;
    //case 0: return NetflixMore();
    //break;

  }
}

class HomeState extends State<Home> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: show(index),
        backgroundColor: Color(0XFF221f1f),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: index,
            onTap: (int x) {
              setState(() {
                index = x;
              });
            },
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  backgroundColor: Color(0XFF221f1f),
                  // ignore: deprecated_member_use
                  title: Text(
                    'Home',
                    style: TextStyle(color: Colors.white, fontSize: 10),
                  )),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search),
                  backgroundColor: Color(0XFF221f1f),
                  // ignore: deprecated_member_use
                  title: Text(
                    'Search',
                    style: TextStyle(color: Colors.white),
                  )),
              BottomNavigationBarItem(
                  icon: Icon(Icons.file_download),
                  // ignore: deprecated_member_use
                  title: Text(
                    'Downloads',
                    style: TextStyle(color: Colors.white),
                  )),
              BottomNavigationBarItem(
                  icon: Icon(Icons.more_vert),
                  // ignore: deprecated_member_use
                  title: Text(
                    'More',
                    style: TextStyle(color: Colors.white),
                  )),
            ]),
      ),
    );
  }
}

class NetflixHome extends StatefulWidget {
  NetflixHomeState createState() => NetflixHomeState();
}

class NetflixHomeState extends State<NetflixHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Image.network(
            'https://image.flaticon.com/icons/png/512/870/870910.png',
            scale: 20),
        actions: <Widget>[
          MaterialButton(
            onPressed: () {},
            child: Text(
              'Series',
              style: TextStyle(color: Colors.white),
            ),
          ),
          MaterialButton(
            onPressed: () {},
            child: Text(
              'Films',
              style: TextStyle(color: Colors.white),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: MaterialButton(
              onPressed: () {},
              child: Text(
                'My List',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Color(0XFF221f1f),
      body: ListView(
        //So that you could scroll
        children: <Widget>[
          Stack(
            children: <Widget>[
              SizedBox(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
              ),
              Container(
                child: Image(
                  image: NetworkImage(
                      'https://filmdaily.co/wp-content/uploads/2020/06/moneyheist-lede-5.jpg'),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height / 2,
                decoration: BoxDecoration(
                    color: Colors.black,
                    gradient: LinearGradient(
                        begin: FractionalOffset.topCenter,
                        end: FractionalOffset.bottomCenter,
                        colors: [
                          Color(0XFF221f1f).withOpacity(0.0),
                          Color(0XFF221f1f),
                        ])),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 200.0),
                      child: MaterialButton(
                        onPressed: () {},
                        child: Column(
                          children: <Widget>[
                            Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                            Text(
                              'MyList',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 200.0),
                      child: MaterialButton(
                        onPressed: () {},
                        child: Center(
                          child: Container(
                            width: 70.0,
                            height: 30.0,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(3),
                            ),
                            child: Center(
                              child: Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.play_arrow,
                                    color: Colors.black,
                                  ),
                                  Text(
                                    ' Play',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 200.0),
                      child: MaterialButton(
                        onPressed: () {},
                        child: Column(
                          children: <Widget>[
                            Icon(
                              Icons.info,
                              color: Colors.white,
                            ),
                            Text(
                              'Info',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 280.0, left: 20.0),
                child: Container(
                  height: 20.0,
                  child: Text(
                    'Previews',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 85.0),
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Row(
                        children: <Widget>[
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://1.bp.blogspot.com/-BQRGagMZqvc/XQIaXBxtvTI/AAAAAAAAKLY/oF9XgYUhn0IlbodPXUAN8OaGNwi2xPZWACLcBGAs/s00/Sacred-Games-Netflix-HD-Wallpapers-10.jpg'),
                            radius: 60.0,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://raw.githubusercontent.com/YaseenAbdullah/Netflix/master/images/bird-box.jpg'),
                            radius: 60.0,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://raw.githubusercontent.com/YaseenAbdullah/Netflix/master/images/lucifer-circle.png'),
                            radius: 60.0,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://raw.githubusercontent.com/YaseenAbdullah/Netflix/master/images/13RW-Poster.jpg'),
                            radius: 60.0,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://raw.githubusercontent.com/YaseenAbdullah/Netflix/master/images/red-sea-poster.jpg'),
                            radius: 60.0,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 500.0, left: 20.0),
                child: Container(
                  height: 20.0,
                  child: Text(
                    'New Releases',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 340.0),
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          child: Row(
                            children: <Widget>[
                              Container(
                                child: Image.network(
                                    'https://raw.githubusercontent.com/YaseenAbdullah/Netflix/master/images/TWD-poster.jpg'),
                                height: 200,
                                width: 160,
                              ),
                              Container(
                                child: Image.network(
                                    'https://raw.githubusercontent.com/YaseenAbdullah/Netflix/master/images/arrow-poster.jpg'),
                                height: 200,
                                width: 160,
                              ),
                              Container(
                                child: Image.network(
                                    'https://raw.githubusercontent.com/YaseenAbdullah/Netflix/master/images/dark-poster.jpg'),
                                height: 200,
                                width: 160,
                              ),
                              Container(
                                child: Image.network(
                                    'https://raw.githubusercontent.com/YaseenAbdullah/Netflix/master/images/suits-poster.jpg'),
                                height: 200,
                                width: 160,
                              ),
                              Container(
                                child: Image.network(
                                    'https://raw.githubusercontent.com/YaseenAbdullah/Netflix/master/images/sherlock-poster.jpg'),
                                height: 200,
                                width: 160,
                              ),
                            ],
                          ),
                        );
                      }),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 800.0, left: 20.0),
                child: Container(
                  height: 20.0,
                  child: Text(
                    'Trending Now',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 670.0),
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          child: Row(
                            children: <Widget>[
                              Container(
                                child: Image.network(
                                    'https://raw.githubusercontent.com/YaseenAbdullah/Netflix/master/images/cable-girls.jpg'),
                                height: 230,
                                width: 170,
                              ),
                              Container(
                                child: Image.network(
                                    'https://raw.githubusercontent.com/YaseenAbdullah/Netflix/master/images/the-punisher-poster.jpg'),
                                height: 230,
                                width: 170,
                              ),
                              Container(
                                child: Image.network(
                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQKdvIzoZkN0OEuU2p21VdzTj0CCzM07FzZ1w&usqp=CAU'),
                                height: 230,
                                width: 170,
                              ),
                              Container(
                                child: Image.network(
                                    'https://raw.githubusercontent.com/YaseenAbdullah/Netflix/master/images/prison-break-poster.jpg'),
                                height: 230,
                                width: 170,
                              ),
                              Container(
                                child: Image.network(
                                    'https://raw.githubusercontent.com/YaseenAbdullah/Netflix/master/images/peaky-blinders-poster.jpg'),
                                height: 230,
                                width: 170,
                              ),
                            ],
                          ),
                        );
                      }),
                ),
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 1150.0),
                  child: Container(
                    height: 20.0,
                    child: Text(
                      'Creator: Mohit Madhav',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

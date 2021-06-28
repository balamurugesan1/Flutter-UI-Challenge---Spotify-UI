import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'PlayListPage.dart';
import 'ProfilePage.dart';
import 'SearchPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _courentTab = 0;
  final Tabs = [
    HomePage(),
    SearchPage(),
    PlayListPage(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          body: Tabs[_courentTab], //HomePage(),tabs[_courentTab],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: _courentTab,
            type: BottomNavigationBarType.shifting,
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                title: Text(
                  "Home",
                  style: TextStyle(color: Colors.white),
                ),
                backgroundColor: Color.fromARGB(255, 20, 20, 20),
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                title: Text(
                  "Search",
                  style: TextStyle(color: Colors.white),
                ),
                backgroundColor: Color.fromARGB(255, 20, 20, 20),
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.library_music,
                  color: Colors.white,
                ),
                title: Text(
                  "Library",
                  style: TextStyle(color: Colors.white),
                ),
                backgroundColor: Color.fromARGB(255, 20, 20, 20),
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                title: Text(
                  "Profile",
                  style: TextStyle(color: Colors.white),
                ),
                backgroundColor: Color.fromARGB(255, 20, 20, 20),
              ),
            ],
            onTap: (index) {
              setState(() {
                _courentTab = index;
              });
            },
          ),
        ),
      ),
    );
  }
}

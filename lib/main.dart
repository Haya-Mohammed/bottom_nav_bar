import 'package:bottom_nav_bar/favorite_page.dart';
import 'package:bottom_nav_bar/homePage.dart';
import 'package:bottom_nav_bar/setting_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// hello
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int selectedIndex = 0;
  final List<Widget> pages = [
    HomePage(),
    FavoritePage(),
    SettingPage(),
      ];
  final List<String> appbarTitle = [
    "Home",
    "Favorite",
    "Settings",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appbarTitle[selectedIndex]),
      ),
      body: pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          //type: BottomNavigationBarType.shifting,
          backgroundColor: Colors.blue,
          selectedFontSize: 20.0,
          unselectedFontSize: 15.0,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.white,
          onTap: (int index){
            setState(() {
              selectedIndex = index;
            });
          },
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home",backgroundColor: Colors.black),
            BottomNavigationBarItem(icon: Icon(Icons.star),label: "Favorite",backgroundColor: Colors.black),
            BottomNavigationBarItem(icon: Icon(Icons.settings),label: "Settings",backgroundColor: Colors.black),
          ]
      ),
    );
  }
}

// login

// checkout master
// update master
// create branch

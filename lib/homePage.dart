import 'package:bottom_nav_bar/screen1.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("To go to screen 1 ,click Screen 1 button !"),
            ElevatedButton(
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const Screen1()))
                      .then((value) => print(value));
                },
                child: const Text("Screen 1"),
            ),
          ],
        ),
      ),
    );
  }
}

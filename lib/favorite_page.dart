import 'package:flutter/material.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  double _value = 0;
  double _value1 = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                color: Colors.blue,
                height: _value,
                width: _value,
              ),
            Text("value : ${_value.round()}"),
            Slider(
              value: _value,
              onChanged: (double val) => setState(() => _value = val ),
              min: 0.0,
              max: 100.0,
              divisions: 100,
              activeColor: Colors.green,
              inactiveColor: Colors.black,
              label: "value",
            ),
            SizedBox(height: 50.0),
            Row(
              children: [
                Slider(
                    value: _value1,
                    onChanged: (double value){
                      setState(() {
                        _value1 = value;
                      });
                    },
                  min: 0,
                  max: 5,
                  divisions: 5,
                  activeColor: Colors.amberAccent,
                  inactiveColor: Colors.white,
                ),
                const Icon(Icons.star,color: Colors.amberAccent,size: 30),
                Text("Rate is ${_value1.toInt()}/5",style: const TextStyle(fontSize: 30),),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

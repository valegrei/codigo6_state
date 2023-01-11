import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String message =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.";
  double fontSize = 12.0;
  double sliderRed = 0.0;
  double sliderGreen = 0.0;
  double sliderBlue = 0.0;

  List<String> images = [
    "https://images.pexels.com/photos/931018/pexels-photo-931018.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/2659475/pexels-photo-2659475.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/1643130/pexels-photo-1643130.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/758742/pexels-photo-758742.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
  ];
  int pos = 0;

  @override
  Widget build(BuildContext context) {
    print("BUILD!!!!!!!!!!!!!!!!!!!!");
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              message,
              style: TextStyle(
                  fontSize: fontSize,
                  color: Color.fromRGBO(sliderRed.toInt(), sliderGreen.toInt(),
                      sliderBlue.toInt(), 1)),
            ),
            ElevatedButton(
                onPressed: () {
                  message = "Hola a todos";
                  print(message);
                  setState(() {
                    fontSize = fontSize + 1;
                  });
                },
                child: Text("Update")),
            const SizedBox(
              height: 12.0,
            ),
            Slider(
                value: sliderRed,
                min: 0,
                max: 255,
                thumbColor: Colors.red,
                inactiveColor: Colors.grey,
                activeColor: Colors.redAccent,
                onChanged: (double value) {
                  sliderRed = value;
                  setState(() {});
                }),
            Slider(
                value: sliderGreen,
                min: 0,
                max: 255,
                thumbColor: Colors.green,
                inactiveColor: Colors.grey,
                activeColor: Colors.greenAccent,
                onChanged: (double value) {
                  sliderGreen = value;
                  setState(() {});
                }),
            Slider(
                value: sliderBlue,
                min: 0,
                max: 255,
                thumbColor: Colors.blue,
                inactiveColor: Colors.grey,
                activeColor: Colors.blueAccent,
                onChanged: (double value) {
                  sliderBlue = value;
                  setState(() {});
                }),
            Image.network(
              images[pos],
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                    onPressed: () {
                      pos--;
                      if (pos == -1) pos = images.length - 1;
                      setState(() {});
                    },
                    child: Text("Anterior")),
                ElevatedButton(
                    onPressed: () {
                      pos++;
                      if (pos == images.length) pos = 0;
                      setState(() {});
                    },
                    child: Text("Siguiente")),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

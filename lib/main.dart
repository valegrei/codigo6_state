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
  String message = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.";
  double fontSize = 12.0;
  double sliderRed = 0.0;
  double sliderGreen = 0.0;
  double sliderBlue = 0.0;

  @override
  Widget build(BuildContext context) {
    print("BUILD!!!!!!!!!!!!!!!!!!!!");
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              message,
              style: TextStyle(
                fontSize: fontSize,
                color: Color.fromRGBO(sliderRed.toInt(), sliderGreen.toInt(), sliderBlue.toInt(), 1)
              ),
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
            const SizedBox(height: 12.0,),

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
          ],
        ),
      ),
    );
  }
}

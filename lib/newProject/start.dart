import 'dart:async';
import 'package:flutter/material.dart';
import 'package:helloworld/newProject/dashboard.dart';

void main(List<String> args) {
  return runApp(MyLogo());
}

class MyLogo extends StatefulWidget {
  @override
  State<MyLogo> createState() => _MyLogoState();
}

class _MyLogoState extends State<MyLogo> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 2),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => MyNavigation()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      body: Container(
        margin: const EdgeInsets.only(top: 250),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomRight,
              colors: [
                Color.fromARGB(255, 65, 65, 65),
                Color.fromARGB(255, 0, 0, 0)
              ]),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Center(
              child: FlutterLogo(
                size: 300,
                style: FlutterLogoStyle.horizontal,
                curve: Curves.bounceInOut,
                duration: Duration(seconds: 5),
              ),
            ),
            SizedBox(),
            Text(
              'Powered by Android..',
              style: TextStyle(color: Colors.white, fontSize: 15),
            )
          ],
        ),
      ),
    );
  }
}

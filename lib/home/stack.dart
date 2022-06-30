import 'package:flutter/material.dart';

void main() {
  return runApp(MyStack());
}

class MyStack extends StatefulWidget {
  @override
  State<MyStack> createState() => _MyStackState();
}

class _MyStackState extends State<MyStack> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('welcome')),
      body: Center(
        child: SizedBox(
          width: 300,
          height: 300,
          child: Center(
            child: Stack(
              fit: StackFit.expand,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              //  overflow: Overflow.visible,
              children: <Widget>[
                Container(
                  width: 300,
                  height: 300,
                  color: Colors.red,
                ), //Container
                Positioned(
                  top: 80,
                  left: 80,
                  child: Container(
                    width: 250,
                    height: 250,
                    color: Colors.black,
                  ),
                ), //Container
                Positioned(
                  left: 20,
                  top: 20,
                  child: Container(
                    height: 200,
                    width: 200,
                    color: Colors.purple,
                  ),
                ), //Container
              ], //<Widget>[]
            ), //Stack
          ), //Center
        ),
      ),
    );
  }
}

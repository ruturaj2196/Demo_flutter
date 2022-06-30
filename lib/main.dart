import 'package:flutter/material.dart';

import 'package:helloworld/newProject/start.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(fontFamily: 'Nunito'),
      debugShowCheckedModeBanner: false,
      initialRoute: 'logo',
      routes: {
        'logo': (context) => MyLogo(),
      },
    ),
  );
}

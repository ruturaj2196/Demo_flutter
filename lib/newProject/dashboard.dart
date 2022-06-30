import 'package:flutter/material.dart';
import 'package:helloworld/newProject/cardView.dart';
import 'package:helloworld/newProject/expanded.dart';
import 'package:helloworld/newProject/formValid.dart';
import 'package:helloworld/newProject/jsonTable.dart';
import 'package:helloworld/newProject/listView.dart';
import 'package:helloworld/newProject/radio.dart';
import 'package:helloworld/newProject/table.dart';

void main(List<String> args) {
  return runApp(MyNavigation());
}

class MyNavigation extends StatefulWidget {
  @override
  State<MyNavigation> createState() => _MyNavigationState();
}

class _MyNavigationState extends State<MyNavigation> {
  int currentIndex = 0;
  final screens = [
    MySimpleList(),
    MyCardView(),
    MyExpansion(),
    const MyValidForm(),
    //MyJsonTable(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          onTap: (index) => setState(() => currentIndex = index),
          showUnselectedLabels: false,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.list),
                label: 'listView',
                backgroundColor: Colors.blue),
            BottomNavigationBarItem(
                icon: Icon(Icons.card_giftcard),
                label: 'Card View',
                backgroundColor: Colors.blue),
            BottomNavigationBarItem(
                icon: Icon(Icons.list_alt_sharp),
                label: 'Expanded',
                backgroundColor: Colors.blue),
            BottomNavigationBarItem(
                icon: Icon(Icons.pie_chart),
                label: 'Radio',
                backgroundColor: Colors.blue),
            BottomNavigationBarItem(
                icon: Icon(Icons.table_chart),
                label: 'Table',
                backgroundColor: Colors.blue)
          ]),
    );
  }
}

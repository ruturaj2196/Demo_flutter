import 'package:postgres/postgres.dart';
import 'package:flutter/material.dart';

class MyTable extends StatefulWidget {
  @override
  State<MyTable> createState() => _MyTableState();
}

class _MyTableState extends State<MyTable> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My Table',
          style: TextStyle(color: Colors.black, fontSize: 30),
        ),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
          padding: const EdgeInsets.all(10),
          child: Table(
            columnWidths: const {
              0: FlexColumnWidth(0.4),
              1: FlexColumnWidth(0.2),
              2: FlexColumnWidth(0.2),
              3: FlexColumnWidth(0.1),
              4: FlexColumnWidth(0.1),
            },
            children: const [
              TableRow(children: [
                Text(
                  'Name',
                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 18),
                ),
                Text(
                  'Gender',
                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 18),
                ),
                Text(
                  'Age',
                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 18),
                ),
                Text(
                  'Edit',
                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 18),
                ),
                Text(
                  'Del',
                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 18),
                )
              ]),
              TableRow(children: [
                Text(
                  'Ruturaj Patil',
                  style: TextStyle(fontSize: 15),
                ),
                Text(
                  'Male',
                  style: TextStyle(fontSize: 15),
                ),
                Text(
                  '26',
                  style: TextStyle(fontSize: 15),
                ),
                Icon(
                  Icons.edit,
                  size: 20,
                  color: Colors.blue,
                ),
                Icon(
                  Icons.delete,
                  size: 20,
                  color: Colors.red,
                )
              ]),
              TableRow(children: [
                Text(
                  'Sneha Jadhv',
                  style: TextStyle(fontSize: 15),
                ),
                Text(
                  'Female',
                  style: TextStyle(fontSize: 15),
                ),
                Text(
                  '25',
                  style: TextStyle(fontSize: 15),
                ),
                Icon(
                  Icons.edit,
                  size: 20,
                  color: Colors.blue,
                ),
                Icon(
                  Icons.delete,
                  size: 20,
                  color: Colors.red,
                )
              ]),
              TableRow(children: [
                Text(
                  'Pratik Patil',
                  style: TextStyle(fontSize: 15),
                ),
                Text(
                  'Male',
                  style: TextStyle(fontSize: 15),
                ),
                Text(
                  '26',
                  style: TextStyle(fontSize: 15),
                ),
                Icon(
                  Icons.edit,
                  size: 20,
                  color: Colors.blue,
                ),
                Icon(
                  Icons.delete,
                  size: 20,
                  color: Colors.red,
                )
              ]),
              TableRow(children: [
                Text(
                  'Janhavi Korane',
                  style: TextStyle(fontSize: 15),
                ),
                Text(
                  'Female',
                  style: TextStyle(fontSize: 15),
                ),
                Text(
                  '25',
                  style: TextStyle(fontSize: 15),
                ),
                Icon(
                  Icons.edit,
                  size: 20,
                  color: Colors.blue,
                ),
                Icon(
                  Icons.delete,
                  size: 20,
                  color: Colors.red,
                )
              ]),
              TableRow(children: [
                Text(
                  'Anuja Sontakke',
                  style: TextStyle(fontSize: 15),
                ),
                Text(
                  'Female',
                  style: TextStyle(fontSize: 15),
                ),
                Text(
                  '25',
                  style: TextStyle(fontSize: 15),
                ),
                Icon(
                  Icons.edit,
                  size: 20,
                  color: Colors.blue,
                ),
                Icon(
                  Icons.delete,
                  size: 20,
                  color: Colors.red,
                )
              ]),
            ],
          )),
    );
  }
}

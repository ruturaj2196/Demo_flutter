import 'package:flutter/material.dart';

class PieData {
  static List<Data> data = [
    Data(name: 'amber', percent: 30, color: Colors.amber),
    Data(name: 'blue', percent: 20, color: Colors.blue),
    Data(name: 'red', percent: 40, color: Colors.red),
    Data(name: 'purple', percent: 10, color: Colors.purple),
  ];
}

class Data {
  final String? name;
  final double? percent;
  final Color? color;
  Data({this.name, this.color, this.percent});
}

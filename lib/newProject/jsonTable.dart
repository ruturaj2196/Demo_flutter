import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'PeopleInfoList.dart';
import 'package:flutter/services.dart' as rootBundle;
import 'package:json_table/json_table.dart';

void main(List<String> args) {
  runApp(MyJsonTable());
}

class MyJsonTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //  final Column = ['Name', 'Gender', 'Age'];
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Table View',
          style: TextStyle(color: Colors.black, fontSize: 30),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: FutureBuilder(
        future: readJsonData(),
        builder: (context, data) {
          if (data.hasError) {
            return Center(
              child: Text('${data.error}'),
            );
          } else if (data.hasData) {
            var items = data.data as List<PeopleInfo>;
            return ListView.builder(
              padding: const EdgeInsets.only(top: 5),
              itemCount: items == null ? 0 : items.length,
              itemBuilder: (context, index) {
                return Container(
                  child: DataTable(
                    //border: TableBorder.all(),
                    columns: const [
                      DataColumn(
                        label: Text(
                          'Name',
                          style: TextStyle(fontWeight: FontWeight.w900),
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          'Gender',
                          style: TextStyle(fontWeight: FontWeight.w900),
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          'Age',
                          style: TextStyle(fontWeight: FontWeight.w900),
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          'Edit',
                          style: TextStyle(fontWeight: FontWeight.w900),
                        ),
                      ),
                    ],
                    rows: [
                      DataRow(
                        cells: [
                          DataCell(Text(items[index].name.toString())),
                          DataCell(Text(items[index].gender.toString())),
                          DataCell(Text(items[index].age.toString())),
                          DataCell(
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.edit),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }

  Future<List<PeopleInfo>> readJsonData() async {
    final jsondata = await rootBundle.rootBundle
        .loadString('assets/jsonfile/PeopleInfo.json');
    final list = json.decode(jsondata) as List<dynamic>;

    return list.map((e) => PeopleInfo.fromJson(e)).toList();
  }
}

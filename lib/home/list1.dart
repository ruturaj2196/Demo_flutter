import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'PeopleInfo.dart';
import 'package:flutter/services.dart' as rootBundle;

void main(List<String> args) {
  runApp(MyListView());
}

class MyListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Expandable list')),
      body: FutureBuilder(
        future: ReadJsonData(),
        builder: (context, data) {
          if (data.hasError) {
            return Center(
              child: Text('${data.error}'),
            );
          } else if (data.hasData) {
            var items = data.data as List<PeopleInfo>;
            return ListView.builder(
              padding: EdgeInsets.only(top: 5),
              itemCount: items == null ? 0 : items.length,
              itemBuilder: (context, index) {
                return Card(
                  elevation: 3,
                  child: ExpansionTile(
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          items[index].name.toString(),
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          items[index].email.toString(),
                          style: const TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                    children: [
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              items[index].gender.toString(),
                              style: const TextStyle(fontSize: 15),
                            ),
                            Text(
                              items[index].phone.toString(),
                              style: const TextStyle(fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Text(
                          items[index].address.toString(),
                          style: const TextStyle(fontSize: 15),
                        ),
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

  Future<List<PeopleInfo>> ReadJsonData() async {
    final jsondata = await rootBundle.rootBundle
        .loadString('assets/jsonfile/PeopleInfo.json');
    final list = json.decode(jsondata) as List<dynamic>;

    return list.map((e) => PeopleInfo.fromJson(e)).toList();
  }
}

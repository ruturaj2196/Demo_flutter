import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'PeopleInfoList.dart';
import 'package:flutter/services.dart' as rootBundle;

void main(List<String> args) {
  runApp(MyExpansion());
}

class MyExpansion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Expanded List View',
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
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'gender: ${items[index].gender.toString()}',
                            style: const TextStyle(fontSize: 15),
                          ),
                          Text(
                            'Phone: ${items[index].phone.toString()}',
                            style: const TextStyle(fontSize: 15),
                          ),
                          Text(
                            'Address: ${items[index].address.toString()}',
                            style: const TextStyle(fontSize: 15),
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

import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'PeopleInfoList.dart';
import 'package:flutter/services.dart' as rootBundle;

void main(List<String> args) {
  runApp(MySimpleList());
}

class MySimpleList extends StatefulWidget {
  @override
  State<MySimpleList> createState() => _MyListState();
}

class _MyListState extends State<MySimpleList> {
  int index = 20;

  Future<Null> refreshList() async {
    await Future.delayed(const Duration(seconds: 4));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'List View',
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
              itemCount: items == null ? 0 : items.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    ListTile(
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(items[index].name.toString()),
                          Text(items[index].gender.toString()),
                        ],
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(items[index].email.toString()),
                          Text(items[index].address.toString()),
                        ],
                      ),
                    ),
                  ],
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

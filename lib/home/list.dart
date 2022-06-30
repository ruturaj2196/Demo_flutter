import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'PeopleInfo.dart';
import 'package:flutter/services.dart' as rootBundle;

void main(List<String> args) {
  runApp(MyList());
}

class MyList extends StatefulWidget {
  @override
  State<MyList> createState() => _MyListState();
}

class _MyListState extends State<MyList> {
  int index = 20;

  Future<Null> refreshList() async {
    await Future.delayed(const Duration(seconds: 4));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('JSON List View'),
        backgroundColor: Colors.purple[600],
        actions: [Icon(Icons.list)],
      ),
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
              itemCount: items == null ? 0 : items.length,
              itemBuilder: (context, index) {
                return Card(
                  elevation: 3,
                  color: Colors.red[50],
                  margin:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // CircleAvatar(
                        //   foregroundImage:
                        //       NetworkImage(items[index].picture.toString()),
                        //   // child: Image(
                        //   //     width: 50,
                        //   //     height: 50,
                        //   //     image:
                        //   //         NetworkImage(items[index].picture.toString()),
                        //   //     fit: BoxFit.cover),
                        // ),
                        Expanded(
                            child: Container(
                          padding: const EdgeInsets.only(bottom: 7),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8),
                                    child: Text(
                                      items[index].name.toString(),
                                      style: const TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8),
                                    child: Text(items[index].gender.toString()),
                                  )
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8),
                                child: Text(items[index].email.toString()),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8),
                                child: Text(items[index].address.toString()),
                              )
                            ],
                          ),
                        ))
                      ],
                    ),
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

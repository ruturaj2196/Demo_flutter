import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My App',
        ),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.menu))],
        backgroundColor: const Color(0xff4c505b),
        elevation: 0,
        //   icon: Icon(Icons.menu)
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        //  verticalDirection: VerticalDirection.up,
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 100,
            //padding: const EdgeInsets.all(8.0),
            margin: const EdgeInsets.symmetric(
              horizontal: 8.0,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.amber,
            ),
            child: const Center(
              child: Text('Container1'),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Container(
                height: 100,
                width: 180,
                //padding: const EdgeInsets.all(8.0),
                margin: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue[200],
                ),
                child: const Center(
                  child: Text('Container2'),
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Container(
                height: 100,
                width: 180,
                // padding: const EdgeInsets.all(8.0),
                margin: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue[200],
                ),
                child: const Center(
                  child: Text('Container3'),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            height: 50,
            //padding: const EdgeInsets.all(8.0),
            margin: const EdgeInsets.symmetric(
              horizontal: 8.0,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.red[100],
            ),
            child: const Center(child: Text('Container4')),
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Column(
                children: [
                  Container(
                    height: 70,
                    width: 115,
                    //padding: const EdgeInsets.all(8.0),
                    margin: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.orange[200],
                    ),
                    child: const Center(
                      child: Text('Container5'),
                    ),
                  ),
                  Container(
                    height: 70,
                    width: 115,
                    // padding: const EdgeInsets.all(8.0),
                    margin: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.yellow[200],
                    ),
                    child: const Center(
                      child: Text('Container6'),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: 5,
              ),
              Column(
                children: [
                  Container(
                    height: 70,
                    width: 115,
                    // padding: const EdgeInsets.all(8.0),
                    margin: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.green[200],
                    ),
                    child: const Center(
                      child: Text('Container7'),
                    ),
                  ),
                  Container(
                    height: 70,
                    width: 115,
                    // padding: const EdgeInsets.all(8.0),
                    margin: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.pink[200],
                    ),
                    child: const Center(
                      child: Text('Container8'),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: 5,
              ),
              Container(
                height: 160,
                width: 115,

                //padding: const EdgeInsets.all(8.0),
                //margin: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.purple[200],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Container9'),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'jsonListView');
                      },
                      child: const Text('Button'),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //  FlatButton(onPressed: () {}, child: Text('Click Me')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'MyListView');
                  },
                  child: Text('Click Me')),
              //  RaisedButton(onPressed: () {}, child: Text('Click Me')),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'list1');
                },
                style: TextButton.styleFrom(
                    primary: Colors.amber, onSurface: Colors.amber[800]),
                child: const Text('Click Me'),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'stack');
                  },
                  child: Text('Click Me')),
            ],
          ),
          const FlutterLogo(
            size: 100,
            style: FlutterLogoStyle.horizontal,
            curve: Curves.bounceInOut,
            duration: Duration(seconds: 5),
          ),
        ],
      ),
    );
  }
}

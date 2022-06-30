import 'package:flutter/material.dart';

void main(List<String> args) {
  return runApp(MyCheckBox());
}

class MyCheckBox extends StatefulWidget {
  @override
  State<MyCheckBox> createState() => _MyCheckBoxState();
}

class _MyCheckBoxState extends State<MyCheckBox> {
  var checkBox1 = false;
  var checkBox2 = false;
  var checkBox3 = false;
  String? gender;
  String dropdownValue = 'sneha';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('CheckBox')),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Row(
          children: [
            Checkbox(
                value: checkBox1,
                onChanged: (value) {
                  setState(() {
                    checkBox1 = value!;
                  });
                }),
            const Text('CheckBox1')
          ],
        ),
        Row(
          children: [
            Checkbox(
                value: checkBox2,
                onChanged: (value) {
                  setState(() {
                    checkBox2 = value!;
                  });
                }),
            const Text('CheckBox2')
          ],
        ),
        Row(
          children: [
            Checkbox(
                value: checkBox3,
                onChanged: (value) {
                  setState(() {
                    checkBox3 = value!;
                  });
                }),
            const Text('CheckBox3')
          ],
        ),
        ListTile(
          leading: Radio(
              value: "male",
              groupValue: gender,
              onChanged: (value) {
                setState(() {
                  gender = value.toString();
                });
              }),
        ),
        ListTile(
          leading: Radio(
              value: "female",
              groupValue: gender,
              onChanged: (value) {
                setState(() {
                  gender = value.toString();
                });
              }),
        ),
        DropdownButton<String>(
          value: dropdownValue,
          icon: const Icon(Icons.arrow_drop_down),
          elevation: 4,
          style: const TextStyle(color: Colors.deepPurple),
          underline: Container(
            height: 2,
            color: Colors.deepPurpleAccent,
          ),
          onChanged: (String? newValue) {
            setState(() {
              dropdownValue = newValue!;
            });
          },
          items: <String>['sneha', 'ruturaj', 'pratik', 'janhavi', 'anuja']
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        )
      ]),
    );
  }
}

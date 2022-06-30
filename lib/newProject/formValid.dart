import 'package:flutter/material.dart';

void main(List<String> args) {
  return runApp(const MyValidForm());
}

class MyValidForm extends StatefulWidget {
  const MyValidForm({Key? key}) : super(key: key);

  @override
  State<MyValidForm> createState() => _MyValidFormState();
}

class _MyValidFormState extends State<MyValidForm> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController userName = TextEditingController();
  final TextEditingController password = TextEditingController();

  String? gender;
  var checkBox1 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Form Validation',
          style: TextStyle(color: Colors.black, fontSize: 30),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              const SizedBox(
                height: 30,
              ),
              const Text('Enter User Name'),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: userName,
                decoration: InputDecoration(
                    hintText: "Enter user name",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter valid user name';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Radio(
                    value: "male",
                    groupValue: gender,
                    onChanged: (value) {
                      setState(
                        () {
                          gender = value.toString();
                        },
                      );
                    },
                  ),
                  const Text('Male'),
                  Radio(
                    value: "female",
                    groupValue: gender,
                    onChanged: (value) {
                      setState(
                        () {
                          gender = value.toString();
                        },
                      );
                    },
                  ),
                  const Text('Female'),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('Enter Password'),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                obscureText: true,
                controller: password,
                decoration: InputDecoration(
                  hintText: "Enter Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter Password';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  FormField(
                    builder: (state) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Checkbox(
                                value: checkBox1,
                                onChanged: (value) {
                                  checkBox1 = value!;
                                  state.didChange(value);
                                },
                              ),
                              const Text('Above information is correct.'),
                            ],
                          ),
                          Text(
                            state.errorText ?? '',
                            style: TextStyle(
                              color: Theme.of(context).errorColor,
                            ),
                          )
                        ],
                      );
                    },
                    validator: (value) {
                      if (!checkBox1) return 'Required Field';
                      return null;
                    },
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {}
                },
                child: const Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

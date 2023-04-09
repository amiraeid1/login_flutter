import 'package:flutter/material.dart';

import 'main.dart';

class MyWidget2 extends StatelessWidget {
  MyWidget2({super.key});

  final _formKey = GlobalKey<FormState>();
  final myController = TextEditingController();
  final myController2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("hello"),
          leading: IconButton(
            icon: const Icon(Icons.desktop_mac_rounded),
            onPressed: () {},
          ),
          backgroundColor: (Colors.blue)),
      body: Form(key: _formKey,
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Image.network(
  "https://upload.wikimedia.org/wikipedia/commons/1/17/Google-flutter-logo.png"),
          TextFormField(
            controller: myController,
            decoration: const InputDecoration(
                hintText: "email", border: OutlineInputBorder()),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return ("Please enter some text");
              }
              return null;
            },
          ),
          TextFormField(
            controller: myController2,
            decoration: const InputDecoration(
                hintText: "password", border: OutlineInputBorder()),
            validator: (value) {
              if (value!.length < 8) {
                return ("your password doesn't meet the requirements");
              }
              return null;
            },
          ),
          ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const nweone();
                  }));
                }
              },
              child: const Text(" log in"))
        ]),
      ),
    );
  }
}

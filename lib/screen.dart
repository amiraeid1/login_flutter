import 'package:flutter/material.dart';

import 'main.dart';

class MyWidget extends StatelessWidget {
  MyWidget({super.key});
  final _formKey = GlobalKey<FormState>();
  final myController = TextEditingController();
  final myController2 = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [Icon(Icons.abc_sharp)],
        title: const Text("hello"),
        backgroundColor: Colors.blueGrey,
      ),
      backgroundColor: const Color.fromARGB(255, 227, 101, 101),
      body: Form(
        key: _formKey,
        child: Center(
          child: Padding(padding: const EdgeInsets.all(80),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const CircleAvatar(
                  radius: 150,
                  backgroundColor: Color.fromARGB(255, 47, 241, 202),
                  backgroundImage: NetworkImage(
                      "https://png.pngtree.com/png-clipart/20230328/original/pngtree-international-women-s-day-8-march-with-frame-of-flower-and-png-image_9006378.png"),
                ),
                TextFormField(
                  controller: myController,
                  decoration: const InputDecoration(
                      filled: true,
                      fillColor: Colors.blueGrey,
                      prefixIcon: Icon(Icons.ads_click),
                      hintText: "user name",
                      hintStyle: TextStyle(),
                      border: OutlineInputBorder()),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: myController2,
                  decoration: const InputDecoration(
                      filled: true,
                      fillColor: (Colors.blueGrey),
                      prefixIcon: Icon(Icons.emoji_emotions_sharp),
                      hintText: "password",
                      hintStyle: TextStyle(),
                      border: OutlineInputBorder()),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password';
                    }
                    return null;
                  },
                ),
                ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const nextpage();
                        }));
                      }
                      print(myController.text);
                      print(myController2.text);
                    },
                    child: const Text(
                      "click here",
                      style: TextStyle(fontSize: 20, color: Colors.yellow),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

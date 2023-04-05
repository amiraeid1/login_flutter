import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          actions: const [Icon(Icons.abc_sharp)],
          title: const Text("hello"),
          backgroundColor: Colors.blueGrey,
        ),
        backgroundColor: const Color.fromARGB(255, 227, 101, 101),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const CircleAvatar(
                radius: 150,
                backgroundColor: Color.fromARGB(255, 47, 241, 202),
                backgroundImage: NetworkImage(
                    "https://png.pngtree.com/png-clipart/20230328/original/pngtree-international-women-s-day-8-march-with-frame-of-flower-and-png-image_9006378.png"),
              )
              ,TextFormField(
                  decoration: const InputDecoration(
                      filled: true,
                      fillColor: Colors.blueGrey,
                      prefixIcon: Icon(Icons.ads_click),
                      hintText: "user name",
                      hintStyle: TextStyle(),
                      border: OutlineInputBorder())),
              TextFormField(
                decoration: const InputDecoration(
                    filled: true,
                    fillColor: (Colors.blueGrey),
                    prefixIcon: Icon(Icons.emoji_emotions_sharp),
                    hintText: "password",
                    hintStyle: TextStyle(),
                    border: OutlineInputBorder()),
              )
              
             , ElevatedButton(
                  onPressed: () {
                    print("flutter");
                  },
                  child: const Text(
                    "click here",
                    style:
                        TextStyle(fontSize: 20, color: Colors.yellow),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

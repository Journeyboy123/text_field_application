import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(title: "Title"),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // int _counter = 0;

  void _incrementCounter() {
    // setState(() {
    //   _counter++;
    // });
  }

  @override
  Widget build(BuildContext context) {
    // var textEditingController = TextEditingController();
    return Scaffold(
      // appBar: AppBar(),
      body: Column(children: [
        Image.asset("images/Hotel.jpg",
            fit: BoxFit.fill,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 2.5),
        const Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(children: [
              Icon(Icons.restaurant),
              Text("305.5"),
              Text("calories"),
            ]),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(children: 
              Icon(Icons.alarm_add),
              Text("5"),
              Text("Time"),
            ]),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(children: [
              Icon(Icons.group_add),
              Text("6"),
              Text("Serve"),
            ]),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(children: [
              Icon(Icons.shopping_cart),
              Text("9"),
              Text("Counts"),
            ]),
          ),
        ]),
        Row(children: [
          Text(
            "Hotel Required",
            style: TextStyle(fontSize: 25),
          ),
        ]),
        Padding(
          padding: const EdgeInsets.only(top: 11),
          child: Row(children: [
            Icon(Icons.add_circle, color: Colors.green),
            Text("Waiters"),
          ]),
        ),
        Row(children: [
          Icon(Icons.remove_circle, color: Colors.red),
          Text("Security Guards"),
        ]),
        Row(children: [
          Icon(Icons.remove_circle, color: Colors.red),
          Text("Chef Staff"),
        ]),
        Row(
          children: [
            Icon(Icons.add_circle, color: Colors.green),
            Text("Manager"),
          ],
        )
      ]),
    );
  }
}
          // TextField(
          //   decoration: InputDecoration(
          //       label: Text("enter something"),
          //       hintText: "This is hint",
          //       suffixIcon: Icon(Icons.check)),
          //   controller: textEditingController,
          // ),
          // ElevatedButton(
          //     onPressed: () {
          //       print("Value entered is ${textEditingController.text}");
          //     },
          //     child: Text("Ok"))
        
    
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ),

      // This trailing comma makes auto-formatting nicer for build methods.


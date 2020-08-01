import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(title: 'Image Loader'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // constructor
  _MyHomePageState() : super() {
    print(
        ">>>>>>>>>>>>>>>>>>>>>>>>>   _MyHomePageState being created. Constructor called.");
  }
  // int _counter = 0;
  final r = new Random();

  String url = "https://picsum.photos/id/1/200/300";

  // @override
  // void initState() {
  //   super.initState();
  //   print(">>>>>>>>>>>>>>>>>>>>>>>>>   _MyHomePageState initState() called.");
  //   _counter = 0;
  // }

  @override
  Widget build(BuildContext context) {
    print(">>>>>>>>>>>>>>>>>>>>>>>>>   _MyHomePageState build() called!");
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Image.network(url),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          color: Colors.yellow,
          height: 60,
          child: Center(
            child: Text(
              "Click refresh to get a new image",
              style: TextStyle(
                fontSize: 18,
                fontFamily: "Roboto",
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print(
              ">>>>>>>>>>>>>>>>>>>>>>>>>   'Floating Blue' button pressed. Function setState() called.");
          setState(() {
            url = "https://picsum.photos/id/" +
                r.nextInt(100).toString() +
                "/200/300";
          });
        },
        tooltip: 'Increment',
        child: Icon(Icons.refresh),
      ),
    );
  }
}

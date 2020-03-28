import 'package:flutter/material.dart';

void main() => runApp(MyApp());

//Main Application Widget

class MyApp extends StatelessWidget {
  static const String _title="My First App";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: _title,
      home: MyFirstWidget(),
    );
  }


}

class MyFirstWidget extends StatefulWidget {
  MyFirstWidget({Key key}) : super(key: key);


  @override
  MyHomePage createState() => MyHomePage();
}

class MyHomePage extends State<MyFirstWidget>{
  int count=0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Main Title"),
      ),
      body: Center(
        child: Text('You have Pressed  the button $count times'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: ()=> setState(()=>count++),
        tooltip: 'Increment Counter',
        child: const Icon(Icons.add),
      ),
    );
  }

}


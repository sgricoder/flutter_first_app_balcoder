import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({this.title});
  final String title;
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int cont = 0;

  increment() {
    setState(() {
      cont++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [Text('El Davos La Bestia GT'), Text(cont.toString())],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: increment,
        child: Icon(Icons.add),
      ),
    );
  }
}

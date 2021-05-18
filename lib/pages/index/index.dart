import 'package:flutter/material.dart';

class IndexPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new IndexPageState();
}

class IndexPageState extends State<IndexPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Demo'),
      ),
      body: ListView(
        children: [
          Card(
            child: ListTile(
              title: Text('First Layout'),
              onTap: () {
                Navigator.pushNamed(context, 'firstLayout');
              },
            ),
          ),
          Card(
            child: ListTile(
              title: Text('ToDo'),
              onTap: () {
                Navigator.pushNamed(context, 'todo');
              },
            ),
          )
        ],
      ),
    );
  }
}

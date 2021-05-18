import 'package:flutter/material.dart';

class IndexPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new IndexPageState();
}

class IndexPageState extends State<IndexPage> {
  @override
  Widget build(BuildContext context) {
    Widget _listCard(
        String title, context, String route, String tips, String path) {
      return Card(
        child: ListTile(
          onTap: () {
            Navigator.pushNamed(context, route);
          },
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title),
              Text(tips),
              Text(path),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Demo'),
      ),
      body: ListView(
        children: [
          _listCard('First Layout', context, 'firstLayout', '官方案例',
              'https://flutter.cn/docs/development/ui/layout/tutorial'),
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

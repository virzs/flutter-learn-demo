import 'package:flutter/material.dart';

class ToDoPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new ToDoPageState();
}

class ToDoPageState extends State<ToDoPage> {
  final List<String> _todoList = ['列表', '清单'];
  int num = 0;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(title: new Text('ToDo')),
        body: _buildList(),
        floatingActionButton: new FloatingActionButton(
          child: new Icon(Icons.add),
          onPressed: () {
            print('点击按钮');
            num++;
            setState(() {
              _todoList.add('value$num');
            });
            print(_todoList);
          },
        ));
  }

  Widget _buildList() {
    return new ListView.builder(itemBuilder: (item, i) {
      if (i <= _todoList.length - 1) return _buildListItem(_todoList[i]);
      return null;
    });
  }

  Widget _buildListItem(String item) {
    return new Card(
      child: new ListTile(
        title: new Text(item),
        leading: new Icon(Icons.format_list_bulleted),
        trailing: Container(
          child: new Icon(Icons.edit),
        ),
        onTap: () {
          Navigator.pushNamed(context, 'wordList');
        },
      ),
    );
  }
}

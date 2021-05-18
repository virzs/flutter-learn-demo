import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TipPage extends StatelessWidget {
  TipPage({
    Key key,
    @required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: new Text('提示'),
        ),
        body: Padding(
          padding: EdgeInsets.all(18),
          child: Center(
            child: Column(
              children: <Widget>[
                new Text(text),
                ElevatedButton(
                  onPressed: () => Navigator.pop(context, '返回值'),
                  child: new Text('返回'),
                )
              ],
            ),
          ),
        ));
  }
}

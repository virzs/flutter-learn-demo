import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_proj/pages/tip/index.dart';

class TipContentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () async {
          var result = await Navigator.push(context,
              MaterialPageRoute(builder: (context) {
            return TipPage(text: '我是提示参数');
          }));
          //输出`TipRoute`路由返回结果
          print("路由返回值: $result");
        },
        child: new Text('打开提示页'),
      ),
    );
  }
}

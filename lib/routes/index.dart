import 'package:flutter/cupertino.dart';
import 'package:flutter_proj/pages/firstLayout/index.dart';
import 'package:flutter_proj/pages/index/index.dart';
import 'package:flutter_proj/pages/todo/index.dart';
import 'package:flutter_proj/pages/wordList/index.dart';

Map<String, StatefulWidget Function(dynamic)> routes(BuildContext context) {
  return {
    "/": (context) => IndexPage(),
    "todo": (context) => ToDoPage(),
    "firstLayout": (context) => FirstLayoutPage(),
    "wordList": (context) => WordListPage(),
  };
}

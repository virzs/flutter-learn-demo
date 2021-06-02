import 'package:flutter_proj/pages/todo/index.dart';
import 'package:flutter_proj/routes/index.dart';
import 'package:fluro/fluro.dart';

class IndexRouter implements RouterProvider {
  static const todo = '/todo';

  @override
  void initRouter(FluroRouter router) {
    router.define(todo, handler: Handler(handlerFunc: (_, __) => ToDoPage()));
  }
}

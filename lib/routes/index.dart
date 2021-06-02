import 'package:fluro/fluro.dart';
import 'package:flutter_proj/pages/todo/router.dart';

abstract class RouterProvider {
  void initRouter(FluroRouter router);
}

class Routes {
  static final FluroRouter router = FluroRouter();

  static final List<RouterProvider> _routerList = [];

  static void initRoutes() {
    _routerList.clear();

    _routerList.add(ToDoRouter());

    _routerList.forEach((r) {
      r.initRouter(router);
    });
  }
}
